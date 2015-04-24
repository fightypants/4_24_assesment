require ('sinatra')
require ('sinatra/reloader')
require ('pry')




  class String
    define_method(:word_count) do
      counts = Hash.new 0
      sentence = self.split
      sentence.each do |word|
      counts[word] += 1
      end
      value = counts
    end
  end
