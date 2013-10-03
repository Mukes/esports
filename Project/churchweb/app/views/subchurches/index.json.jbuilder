json.array!(@subchurches) do |subchurch|
  json.extract! subchurch, :subchurch_name, :subchurch_address, :subchurch_phone_no, :id_no
  json.url subchurch_url(subchurch, format: :json)
end
