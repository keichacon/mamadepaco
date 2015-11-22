class Producto < ActiveRecord::Base
  belongs_to :artesano
  mount_uploader :foto1, ImagenUploader
  mount_uploader :foto2, ImagenUploader
  mount_uploader :foto3, ImagenUploader
end
