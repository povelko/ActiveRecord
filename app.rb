#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'


set :database, {adapter: "sqlite3", database: "barber.db"}

class Client < ActiveRecord::Base
	validates :name, presence: true
	validates :date, presence: true
	validates :phone, presence: true
	validates :barber, presence: true
end

class Barber < ActiveRecord::Base

end

class Contact < ActiveRecord::Base

end
before do 
	@barber = Barber.order "created_at desc"
	@contacts = Contact.all
end
get '/contacts' do
	erb :contacts
end

get '/' do
	erb :index
end
get '/vizit' do
	erb :vizit
end
post '/vizit' do
	#Client.create :name => params[:username], :phone => params[:phone], :date => params[:date],
	#:color => params[:color], :barber => params[:barber]
	c = Client.new params[:client]
	c.save
	redirect '/'
end
post '/contacts' do
	Contact.create :fio => params[:fio], :sotik => params[:sotik], :email => params[:email],
	:discription => params[:discription]
	redirect '/'
end