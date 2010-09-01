class CreateSetPageRelationships < ActiveRecord::Migration
  def self.up
    create_table :featured_pages_sets_pages, { :id => false } do |t|
      t.references :featured_pages_set
      t.references :page
    end
  end

  def self.down
    drop_table :featured_pages_sets_pages
  end
end
