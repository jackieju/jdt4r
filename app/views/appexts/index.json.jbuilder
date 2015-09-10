json.array!(@appexts) do |appext|
  json.extract! appext, :id, :appid, :name
  json.url appext_url(appext, format: :json)
end
