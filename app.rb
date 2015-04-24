require ('sinatra')
require ('sinatra/reloader')
require ('./lib/word_counter_app')
require ('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:form)
end


get('/output') do


  sentence = params.fetch('sentence')
  word = params.fetch('word')
  number_of_words = sentence.word_count
  specific_number = number_of_words.fetch(word)
  @output = specific_number
  erb(:output)




end
