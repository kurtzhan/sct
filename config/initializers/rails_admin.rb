RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new do
      except ['SiteConfig', 'Message']
    end
    export
    bulk_delete do
      except ['SiteConfig']
    end
    show
    edit do
      except ['Message']
    end
    delete do
      except ['SiteConfig']
    end
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.authenticate_with do
    warden.authenticate! scope: :admin
  end

  config.authorize_with :cancan
  
  config.model Product do
    edit do
      field :category, :belongs_to_association
      field :name
      field :short_description
      field :description, :ck_editor
      field :title do
        html_attributes do
          {:style => "width: 100%"}
        end
      end
      field :meta_keywords do
        html_attributes do
          {:style => "width: 100%"}
        end
      end
      field :meta_description do
        html_attributes do
          {:style => "width: 100%"}
        end
      end
    end
    
    list do
      field :id
      field :name
      field :category
      field :slug
      field :created_at
      field :updated_at
    end
  end

  config.model News do
    edit do
      field :name
      field :description, :ck_editor
    end
  end

  config.model Material do
    label "Bronze Alloy"
    label_plural "Bronze Alloys"
    edit do
      field :name
    end
  end

  config.model MaterialItem do
    label "Bronze Code"
    label_plural "Bronze Codes"
    parent Material
    edit do
      field :name
      field :material
      field :description, :ck_editor
    end
  end

  config.model SiteConfig do
    field :title do
      html_attributes do
        {:style => "width: 100%"}
      end
    end
    field :meta_keywords do
      html_attributes do
        {:style => "width: 100%"}
      end
    end
    field :meta_description do
      html_attributes do
        {:style => "width: 100%"}
      end
    end
    field :about_us, :ck_editor
    field :qc, :ck_editor
  end

  config.model Category do
    edit do
      field :name
      field :description, :ck_editor
      field :title do
        html_attributes do
          {:style => "width: 100%"}
        end
      end
      field :meta_keywords do
        html_attributes do
          {:style => "width: 100%"}
        end
      end
      field :meta_description do
        html_attributes do
          {:style => "width: 100%"}
        end
      end
    end

    list do
      field :id
      field :name
      field :slug
      field :pictures
      field :created_at
      field :updated_at
    end
  end 

  config.model Ckeditor::Asset do
    visible false
  end

  config.model Ckeditor::AttachmentFile do
    label "PDF"
    label_plural "PDF"
    list do
      field :id
      field :name
      field :data
      field :filename
      field :created_at
      field :updated_at
    end

    edit do
      field :data
      field :filename
    end
  end
  
  config.model Ckeditor::Picture do
    list do
      field :id
      field :name
      field :data
      field :width
      field :height
      field :created_at
      field :updated_at
    end

    edit do
      field :data
    end
  end

  config.model Feature do
    parent Product
    edit do
      field :name
    end

    list do
      field :id
      field :name
      field :slug
      field :products
      field :created_at
      field :updated_at
    end
    weight -1
  end

  config.model CategoryPicture do
    parent Category
 #   configure :preview do
 #     pretty_value do
 #       bindings[:view].tag(:img, { :src => bindings[:object].picture.url(:thumb) })
 #     end
 #   end
  end

  config.model ProductPicture do
    parent Product
  end

  config.model ProductAttachmentFile do
    parent Product
  end

  config.model ProductFeature do
    parent Product
    weight -1
  end

  config.current_user_method(&:current_admin)

end

RailsAdmin::ApplicationController.class_eval do
  skip_after_filter :set_current_tab
end
