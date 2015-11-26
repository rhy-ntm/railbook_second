json.array!(@boooks) do |boook|
  json.extract! boook, :id, :isbn, :title, :price, :publish, :published, :cd
  json.url boook_url(boook, format: :json)
end
