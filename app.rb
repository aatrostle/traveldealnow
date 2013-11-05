require 'sinatra'
require 'httparty'
require 'json'

BASE_URI = "http://deals.expedia.com/beta/deals/hotels.json"

def get_deals
  retrieve_deals = HTTParty.get(BASE_URI)
  @deals = JSON.parse(retrieve_deals.body)
end

helpers do
  def google_map lat, long, zoom
    "http://maps.googleapis.com/maps/api/staticmap?markers=size:small|#{lat},#{long}|&zoom=#{zoom}&size=160x100&sensor=true&key=AIzaSyBGUksvPrbnGkGU7dFo9L8ZNQPYCVUkc3k"
  end
end

get '/' do
  erb :index
end

get '/deals' do
  get_deals
  erb :deals
end
