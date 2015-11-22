json.array!(@productos) do |producto|
  json.extract! producto, :id, :artesano_id, :artesano, :nombre, :desc, :precio, :area, :tipo, :material, :color, :foto1, :foto2, :foto3
  json.url producto_url(producto, format: :json)
end
