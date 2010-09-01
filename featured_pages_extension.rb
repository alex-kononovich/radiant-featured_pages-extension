# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class FeaturedPagesExtension < Radiant::Extension
  version "1.0"
  description "Create collection of featured pages"
  url ""
  
  # extension_config do |config|
  #   config.gem 'some-awesome-gem
  #   config.after_initialize do
  #     run_something
  #   end
  # end

  # See your config/routes.rb file in this extension to define custom routes
  
  def activate
    
    tab 'Content' do
      add_item "Featured Pages", "/admin/featured_pages_sets", :after => "Pages"
    end
    
    # hook into admin page edit form
    admin.page.edit.add :parts_bottom, 'featured_sets'

    Page.class_eval { include FeaturedPages::PageExtension }
    Admin::PagesController.class_eval { include FeaturedPages::PagesControllerExtension }
    Admin::PagesController.class_eval { include FeaturedPages::Interface }
    
  end
end
