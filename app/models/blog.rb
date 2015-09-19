class Blog < ActiveRecord::Base
	mount_uploader :URL, PictureUploader
end
