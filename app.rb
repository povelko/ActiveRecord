#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'


set :database, {adapter: "sqlite3", database: "barber.db"}

class Client < ActiveRecord::Base

end

class Barber <ActiveRecord::Base

end

before do 
	@barber = Barber.order "created_at desc"
end

get '/' do
	
	erb :index
end
get '/vizit' do
	erb :vizit
end
post '/vizit' do
	Client.create :name=> params[:username], :phone => params[:phone], :date => params[:date],
	:color => params[:color], :barber => params[:barber]
end
post '/contacts' do
	Client.create :name=> params[:username], :phone => params[:phone], :date => params[:date],
	:color => params[:color], :barber => params[:barber]
end