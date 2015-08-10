require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcels path', { :type => :feature }) do
    it('takes user entries and calculates a cost to ship') do
      visit('/')
      fill_in('height', :with => '2')
      fill_in('width', :with => '2.5')
      fill_in('length', :with => '2')
      fill_in('distance', :with => '10')
      fill_in('weight', :with => '10')
      fill_in('speed', :with => 'Same-Day')
      click_button('Submit')
      expect(page).to have_content('21.2')
    end
end
