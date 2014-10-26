require 'sinatra'
require 'json'

get '/' do 
  "Avaliable API's <br/> /env <br/>"
end

get '/env' do
  output = '<pre>'
  output += JSON.pretty_generate(ENV.to_hash)
  output += '</pre>'
  output
end


