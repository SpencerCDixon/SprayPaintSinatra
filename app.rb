require 'sinatra'
require 'sinatra/flash'

configure :development do
  require 'pry'
  require 'sinatra/reloader'
end

get '/' do

end
