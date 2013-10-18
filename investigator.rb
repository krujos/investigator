require 'sinatra'
require 'json'

get "/" do 
  "Avaliable API's <br/> 
  /env <br/> 
  /ls/:dir"
end

get "/env" do
  output = "<pre>"
  output += JSON.pretty_generate(ENV.to_hash)
  output += "</pre>"
  output
end

get "/ls/:dir" do
  dir = "/" +  params[:dir]
  
  output = "<pre>"
  Dir.entries(dir).each do |d| 
    output += d + "<br/>"
  end rescue return 404
  output += "</pre>"
end


