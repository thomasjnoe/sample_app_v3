if Rails.env.production?
	CarrierWave.configure do |config|
		config.fog_credentials = {
			:provider => 'AWS',
			:aws_access_key_id => 'AKIAJTWYFHR2BQSEFQNQ',
			:aws_secret_access_key => 'tiqT6kRkrxInojDwEEmGWwDkfsy8d/Ixh3DlvlNW'
		}
		config.fog_directory = 'sampleapp121314'
		config.fog_public = false
	end
end