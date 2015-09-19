json.array!(@jianbas) do |jianba|
  json.extract! jianba, :id, :title, :author, :date, :link
  json.url jianba_url(jianba, format: :json)
end
