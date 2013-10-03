json.array!(@churches) do |church|
  json.extract! church, :name, :address, :church_phone, :church_email
  json.url church_url(church, format: :json)
end
