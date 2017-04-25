require('capybara/rspec') #Installs integration testing
require('./app')
# require('pry')
Capybara.app = Sinatra::Application # Allow integration testing to process
set(:show_exceptions, false)

 #Integration test below.  This simulates user input for rspec testing
describe('the new task', {:type => :feature}) do
  it('processes the user entry and returns that task') do
    visit('/')
     # Title below is the form name, not the
    fill_in('input', :with => 'things')
    click_button('Submit')
    expect(page).to have_content('things')
  end
end
