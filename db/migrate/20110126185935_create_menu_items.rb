class CreateMenuItems < ActiveRecord::Migration
  def self.up
    create_table :menu_items do |t|
      t.integer :menu_page_id
      t.float :x_pos
      t.float :y_pos
      t.float :price
      t.integer :menu_section_id
      t.integer :dish_id
      t.boolean :is_questionable

      t.timestamps
    end
  end

  def self.down
    drop_table :menu_items
  end
end
