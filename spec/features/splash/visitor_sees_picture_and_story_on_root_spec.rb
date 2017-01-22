require 'rails_helper'

RSpec.feature do
  before do
    @story = create(:story)
    @body  = @story.body
    @image = @story.image
  end

  context 'visitor' do
    scenario 'visits the homepage' do
      visit root_path

      expect(page).to have_content 'About'
      expect(page).to have_content 'Contact'
      expect(page).to have_content 'Welcome to Pondering'

      expect(page).to have_content @body
      expect(page).to have_xpath("//img[@src=\"/uploads/test.jpeg\"]")
    end
  end
end
