json.extract! kanri_table, :id, :user_id, :password, :user_name, :mail_address, :TEL, :created_at, :updated_at
json.url kanri_table_url(kanri_table, format: :json)
