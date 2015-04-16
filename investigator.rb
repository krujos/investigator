require 'sinatra'
require 'json'

get '/' do 
  "Avaliable API's <br/> /env <br/>"
end

get '/env' do  
  JSON.pretty_generate(ENV.to_hash)
end


