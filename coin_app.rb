
require 'sinatra'
require_relative 'coin.rb'


get '/' do

erb :change_input, :locals => {:amount => '', :results => '', :message_one => '', :number => ''}  #:message_one => "is a"
end

post '/amount' do
	amount = params[:change_input]

results = change(amount)

erb :change_input, :locals => {:amount => amount, :results => results, :message_one => " is the", :number => ' change '} 