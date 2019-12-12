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

feature "User leaves a comment" do
    scenario "User successfully gets to the add comments page" do
        visit ideas_path
        expect(page).to have_content("Listing All Ideas")
        click_link "Show"
        expect(page).to have_content("Comments")
        expect(page).to have_field("Commenter")
        expect(page).to have_field("Body")
    end
end

feature "User destroys a comment" do
    scenario "User successfully deletes a comment" do
        visit ideas_path
        expect(page).to have_content("Listing All Ideas")
        click_link "Show"
        expect(page).to have_content("Comments")
        expect(page).to have_field("Commenter")
        expect(page).to have_field("Body")
        click_link "Destroy Comment"
        
    end
end
feature "User sorts by Music" do
    scenario "User successfully leaves a rating" do
        visit ideas_path
        expect(page).to have_content("Listing All Ideas")
        click_link "Categories"
        click_link "Music"
        espect(page).to have_content("Listing All Ideas")
        
    end
end
