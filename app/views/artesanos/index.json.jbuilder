json.array!(@artesanos) do |artesano|
  json.extract! artesano, :id, :tipo, :nombre, :exp, :region, :t_taller, :t_artesania, :desc, :logo, :foto, :banner1, :banner2, :banner3, :banner4
  json.url artesano_url(artesano, format: :json)
end
