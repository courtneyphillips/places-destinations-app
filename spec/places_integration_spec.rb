require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('destination addition path', {:type => :feature}) do
  it('will display an ongoing list of destinations; upon submititng will display success message') do
    visit('/')
    fill_in('destination', :with => 'Vancouver, BC')
    click_button('add')
    expect(page).to have_content('Your destination has been added successfully')
  end
end
