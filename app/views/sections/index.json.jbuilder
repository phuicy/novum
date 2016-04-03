json.array!(@sections) do |section|
  json.extract! section, :id, :title, :text, :article_id
  json.url section_url(section, format: :json)
end
