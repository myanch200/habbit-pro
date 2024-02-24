json.extract! habbit_entry, :id, :name, :occurrence, :status, :created_at, :updated_at
json.url habbit_entry_url(habbit_entry, format: :json)
