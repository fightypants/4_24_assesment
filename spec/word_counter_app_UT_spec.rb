require ('rspec')
require ('./lib/word_counter_app')




describe("String#word_counter") do
  it("Counts how many times we get a specifc word") do
    expect("hello kha hello".word_count()).to(eq({"hello"=>2, "kha"=>1}))
  end
 end
