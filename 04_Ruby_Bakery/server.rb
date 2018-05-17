require 'sinatra'

get ('/') do
  erb(:landing)
end

get ('/cupcake') do
  erb(:cupcake)
end
