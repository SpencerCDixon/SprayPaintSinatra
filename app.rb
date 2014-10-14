require 'sinatra'
require './models/html_builder'
require 'sinatra/flash'

enable :sessions

configure :development do
  require 'pry'
  require 'sinatra/reloader'
end

get '/' do
  erb :home
end

get '/documentation' do
  binding.pry
  @html = HtmlFormatter.new
  erb :documentation
end
