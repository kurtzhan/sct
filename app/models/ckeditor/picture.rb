require 'paperclip_processors/watermark'  
class Ckeditor::Picture < Ckeditor::Asset
  has_attached_file :data,
                    :url  => "/ckeditor_assets/pictures/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/ckeditor_assets/pictures/:id/:style_:basename.:extension",
                    :processors => [:watermark],
                    :styles => {  
                      :original => {  
                        :geometry => '640x960>',
                        :watermark_path => "#{Rails.root}/public/images/logo-black.png",
                        :position => 'SouthEast'
                      },
                          :medium => "400x265#", :thumb => "200x133#"
                    }

  validates_attachment_presence :data
  validates_attachment_size :data, :less_than => 2.megabytes
  validates_attachment_content_type :data, :content_type => /\Aimage/

  def url_content
    url(:content)
  end
  
  def name
    data_file_name
  end
end
