require ('rspec')
require ('./lib/word_counter')



describe("String#word_counter") do
  it("Counts how many times we get a specifc word") do
    expect("hello kha hello".coin_app()).to(eq(2))
 end
