class CreateUserapps < ActiveRecord::Migration
  def change
    create_table :userapps do |t|
      t.integer :uid
      t.integer :app
      t.string :perm

      t.timestamps null: false
    end
  end
end
