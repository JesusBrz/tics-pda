json.extract! printer, :id, :name, :model, :serial, :ip, :driver, :created_at, :updated_at
json.url printer_url(printer, format: :json)
