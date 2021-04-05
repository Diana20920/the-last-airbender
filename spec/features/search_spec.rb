require 'rails_helper'

RSpec.describe 'Search TLA API by Nation' do
  describe "I visit the '/' as a user" do
    it 'displays members by nation' do
      visit root_path

      select 'Fire Nation', from: 'nation' #maybe fire_nation
      click_button 'Search For Members'

      expect(current_path).to eq(search_path)
      # expect(page).to have_content()
    end
  end
end




# Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has
