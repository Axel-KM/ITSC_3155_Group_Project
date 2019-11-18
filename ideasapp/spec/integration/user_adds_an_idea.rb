require 'rails_helper.rb'

feature "User adds an idea" do 
    scenario "User successfully gets to the new articles page" do
        visit ideas_path
        expect(page).to have_content("Listing All Ideas")
        click_link "New Idea"
        expect(page).to have_content("New Idea")
        expect(page).to have_field("Title")
        expect(page).to have_field("Text")
    end
end