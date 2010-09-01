require File.dirname(__FILE__) + '/../spec_helper'

describe FeaturedPagesSet do
  before(:each) do
    @featured_pages_set = FeaturedPagesSet.new
  end

  it "should be valid" do
    @featured_pages_set.should be_valid
  end
end
