class CreateKanriTables < ActiveRecord::Migration
  def change
    create_table :kanri_tables do |t|
      t.string :user_id
      t.string :password
      t.string :user_name
      t.string :mail_address
      t.integer :TEL

      t.timestamps null: false
    end
  end
end
