class CreateWordbooks < ActiveRecord::Migration
  def change
    create_table :wordbooks do |t|
      t.string :japanese
      t.string :english

      t.timestamps null: false
    end
  end
end
