json.array!(@links) do |link|
  json.extract! link, :id, :url, :conteudo_esperado
  json.url link_url(link, format: :json)
end
