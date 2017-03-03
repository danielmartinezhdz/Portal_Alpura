json.extract! webservice, :id, :description, :wsdl, :url, :created_at, :updated_at
json.url webservice_url(webservice, format: :json)
