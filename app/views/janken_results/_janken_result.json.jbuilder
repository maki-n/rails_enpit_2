json.extract! janken_result, :id, :your_hand, :result, :created_at, :updated_at
json.url janken_result_url(janken_result, format: :json)
