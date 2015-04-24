require ('capybara/rspec')
require ('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

  describe('the word counter path', {:type => :feature}) do
    it('processes the user input and returns word count for indentified word') do
      visit('/')
      fill_in("sentence", :with => "happy happy joy joy happy")
      fill_in("word", :with => "happy")
      click_button("Count your word!")
      expect(page).to(have_content('3'))
    end
  end
