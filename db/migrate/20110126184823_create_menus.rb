class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.string :name
      t.integer :location_id
      t.date :date_of_menu
      t.integer :day
      t.integer :month
      t.integer :year
      t.boolean :is_sectioned
      t.boolean :is_approved
      t.integer :currency_id
      t.integer :institution_id, :default => 1

      t.timestamps
    end
  end

  def self.down
    drop_table :menus
  end
end
