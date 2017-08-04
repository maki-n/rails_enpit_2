class CreateHanabis < ActiveRecord::Migration
  def change
    create_table :hanabis do |t|
      t.string :name
      t.string :data

      t.timestamps null: false
    end
  end
end
