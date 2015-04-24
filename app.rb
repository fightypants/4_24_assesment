require ('sinatra')
require ('sinatra/reloader')
require ('./lib/word_counter_app')
require ('pry')

get('/') do
  erb(:form)
end


get('/output') do
  erb(:output)
end
