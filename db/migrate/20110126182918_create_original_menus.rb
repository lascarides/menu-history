class CreateOriginalMenus < ActiveRecord::Migration
  def self.up
    create_table :original_menus do |t|
      t.string :sponsor
      t.string :event
      t.string :orig_date
      t.string :place
      t.string :physical_description
      t.string :occasion
      t.string :venue
      t.string :organization
      t.string :notes
      t.string :call_number
      t.string :keywords
      t.string :date
      t.string :language
      t.string :city
      t.string :state
      t.string :digital_id
      t.string :textdate
      t.string :digi_struc
      t.string :dateadded

      t.timestamps
    end
  end

  def self.down
    drop_table :original_menus
  end
end
