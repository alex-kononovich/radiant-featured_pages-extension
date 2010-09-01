module FeaturedPages::PageExtension
  def self.included(base)
    base.class_eval do
      has_and_belongs_to_many :featured_pages_sets
    end
  end
end