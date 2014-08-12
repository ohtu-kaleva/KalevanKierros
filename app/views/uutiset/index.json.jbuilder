json.array!(@uutiset) do |uutiset|
  json.extract! uutiset, :id, :title, :body
  json.url uutiset_url(uutiset, format: :json)
end
