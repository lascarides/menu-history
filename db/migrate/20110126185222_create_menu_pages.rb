class CreateMenuPages < ActiveRecord::Migration
  def self.up
    create_table :menu_pages do |t|
      t.integer :menu_id
      t.integer :page_number
      t.string :repository_uuid
      t.string :catalog_number

      t.timestamps
    end
  end

  def self.down
    drop_table :menu_pages
  end
end
