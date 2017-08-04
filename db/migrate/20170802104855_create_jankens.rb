class CreateJankens < ActiveRecord::Migration
  def change
    create_table :jankens do |t|
      t.integer :your_hand
      t.string :result

      t.timestamps null: false
    end
  end
end
