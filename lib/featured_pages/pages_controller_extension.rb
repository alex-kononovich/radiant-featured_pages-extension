module FeaturedPages::PagesControllerExtension
  
  module InstanceMethods

    def load_featured_sets
      @featured_sets = FeaturedPagesSet.find :all
    end

  end
  
  def self.included(receiver)
    receiver.class_eval do
      include InstanceMethods
      before_filter :load_featured_sets, :only => [:new, :edit]
    end
    
  end
end