class CreateAppexts < ActiveRecord::Migration
  def change
    create_table :appexts do |t|
      t.integer :appid
      t.string :name
      t.string  :icon_s
      t.string :icon_m
      t.string :icon_b
      t.integer :show_in_left

      t.timestamps null: false
    end
  end
end
