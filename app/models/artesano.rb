class Artesano < ActiveRecord::Base
	mount_uploader :logo, ImagenUploader
	mount_uploader :foto, ImagenUploader
	mount_uploader :banner1, ImagenUploader
	mount_uploader :banner2, ImagenUploader
	mount_uploader :banner3, ImagenUploader
	mount_uploader :banner4, ImagenUploader
end
