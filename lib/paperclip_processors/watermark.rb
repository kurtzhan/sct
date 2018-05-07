# Rails.root /lib/paperclip_processors/watermark.rb
module Paperclip
  class Watermark < Thumbnail
    def initialize(file, options = {}, attachment = nil)
      super
      @watermark_path = options[:watermark_path]
      @banner_watermark_path = options[:banner_watermark_path]
      @position       = options[:position].nil? ? "SouthEast" : options[:position]
    end

    def make
      src = @file
      is_banner = false
      is_banner = true if attachment.to_s =~ /banner\./
      dst = Tempfile.new([@basename].compact.join("."))
      dst.binmode

      return super if attachment.to_s =~ /no_watermark\./
      return super unless @watermark_path

      # remove -auto-orient parameter to handle error
      params = "-gravity #{@position} #{transformation_command.join(" ")} #{is_banner ? @banner_watermark_path : @watermark_path} :source :dest".sub(/-auto-orient/, '')
puts params
      begin
        success = Paperclip.run("composite", params, :source => "#{File.expand_path(src.path)}[0]", :dest => File.expand_path(dst.path))
      rescue PaperclipCommandLineError
        raise PaperclipError, "There was an error processing the watermark for #{@basename}" if @whiny
      end

      dst
    end
  end
end


