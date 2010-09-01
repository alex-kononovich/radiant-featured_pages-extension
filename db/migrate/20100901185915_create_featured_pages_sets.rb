class CreateFeaturedPagesSets < ActiveRecord::Migration
  def self.up
    create_table :featured_pages_sets do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :featured_pages_sets
  end
end
