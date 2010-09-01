module FeaturedPages::Interface
  
  module InstanceMethods
    def add_featured_pages_stylesheet
      include_stylesheet 'admin/featured_pages'
    end
  end
  
  def self.included(receiver)
    receiver.class_eval do
      include InstanceMethods
      before_filter :add_featured_pages_stylesheet, :only => [:edit, :new]
    end
    
  end
end