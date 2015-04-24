require ('./lib/word_counter_app')
require ('sinatra')
require ('capybara/rspec')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

  describe('the word counter path', {:type => :feature}) do
    it('processes the user input and returns word count for indentified word') do
      visit('/')
      fill_in('sentence', {:with => 'happy happy joy joy hapy happy'})
      fill_in('word'), {:with => 'happy'}
      click_button('Submit')
      expect(page).to(have_content('4'))
    end
  end
end
