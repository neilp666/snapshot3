require "instagram"

Instagram.configure do |config|
	config.client_id = ENV["CONFIG.CLIENT_ID"]
	config.access_token = ENV["CONFIG.ACCESS_TOKEN"]
end