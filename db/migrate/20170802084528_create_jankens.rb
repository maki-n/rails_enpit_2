class CreateJankens < ActiveRecord::Migration
  def change
    create_table :jankens do |t|
      t.integer :judge

      t.timestamps null: false
    end
  end
end
