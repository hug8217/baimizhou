json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :content, :author, :date, :URL
  json.url blog_url(blog, format: :json)
end
