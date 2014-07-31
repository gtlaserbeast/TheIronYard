# require 'rubygems'
require 'sinatra'
require 'Faker'



get '/' do
  @name = Faker::Name.name
  erb :index
end


get '/resume' do
  erb :resume
end

get '/faker_test' do
  @wisdom = Faker::Hacker.say_something_smart
  erb :faker_test
end

get '/fake_resume' do
  @name = Faker::Name.name
  @email = Faker::Internet.free_email
  @phone = Faker::PhoneNumber.cell_phone
  erb :fake_resume, layout: :fake_layout
end


# Inquire about parameter passing in class tomorrow! 
# This is the one aspect of the homework that escaped me.