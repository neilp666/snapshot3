class PagesController < ApplicationController
  def home
  	access_token = ENV["ACCESS_TOKEN"]
  	config.client_id = ENV["CONFIG.CLIENT_ID"]
  	config.client_secret = ENV["CONFIG.CLIENT_SECRET"]
  	client = Instagram.client(access_token: access_token)
  	default_search = client.tag_search('mustang')

  	if params[:q]
  		search_query = client.tag_search(params[:q])
  		@tag = search_query.present? ? search_query : default_search
  	else
  		@tag = default_search
  	end

  	@tag = @tag.first.name
  	@search = client.tag_recent_media(@tag)

  end

  def about
  end
end
