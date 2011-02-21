class CreateMenuSectionInstances < ActiveRecord::Migration
  def self.up
    create_table :menu_section_instances do |t|
      t.integer :menu_page_id
      t.integer :menu_section_id
      t.float :x_pos
      t.float :y_pos
      t.float :width
      t.float :width

      t.timestamps
    end
  end

  def self.down
    drop_table :menu_section_instances
  end
end
