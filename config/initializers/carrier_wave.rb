if Rails.env.production?
	CarrierWave.configure do |config|
		config.fog_credentials = {
			:provider => 'AWS',
			:aws_access_key_id => ENV['S3_ACCESS_KEY'],
			:aws_secret_access_key => ENV['S3_SECRET_KEY']
		}
		compute = Fog::Compute.new(:provider => 'AWS', :aws_access_key_id => ACCESS_KEY_ID, :aws_secret_access_key => SECRET_ACCESS_KEY)
		storage = Fog::Storage.new(:provider => 'AWS', :aws_access_key_id => ACCESS_KEY_ID, :aws_secret_access_key => SECRET_ACCESS_KEY)
		config.fog_directory = ENV['S3_BUCKET']
		config.fog_public = false
	end
end