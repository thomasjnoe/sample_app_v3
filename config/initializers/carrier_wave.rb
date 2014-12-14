if Rails.env.production?
	CarrierWave.configure do |config|
		config.fog_credentials = {
			:provider => 'AWS',
			:aws_access_key_id => ENV['AKIAJTWYFHR2BQSEFQNQ'],
			:aws_secret_access_key => ENV['tiqT6kRkrxInojDwEEmGWwDkfsy8d/Ixh3DlvlNW']
		}
		config.fog_directory = ENV['sampleapp121314']
	end
end