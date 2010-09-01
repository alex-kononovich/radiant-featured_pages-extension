class CreateSetPageRelationships < ActiveRecord::Migration
  def self.up
    create_table :featured_pages_sets_pages do |t|
      t.references :featured_pages_sets
      t.references :pages       
    end
  end

  def self.down
    drop_table :featured_pages_sets_pages
  end
end
