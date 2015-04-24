require ('./word_counter_app')
require ('sinatra')
require ('capybara/rspec')

Capybara.app = Sinatra::Application


  describe('the word counter path', {:type => :feature}) do
    it('processes the user input and returns word count for indentified word') do
      visit('/')
      fill_in('Sentence', {:with => 'happy happy joy joy hapy happy'})
      fill_in('counter'), {:with => 'happy'}
      click_button('Submit')
      expect(page).to(have_content('4'))
    end
  end
end
