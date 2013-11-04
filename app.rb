require 'sinatra'
require 'httparty'
require 'json'

BASE_URI = "http://deals.expedia.com/beta/deals/hotels.json"

def get_deals
  retrieve_deals = HTTParty.get(BASE_URI)
  @deals = JSON.parse(retrieve_deals.body)
end

get '/' do
  erb :index
end

get '/deals' do
  get_deals
  erb :deals
end
