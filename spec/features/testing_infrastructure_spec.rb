feature 'homepage test' do
    scenario "homepage displays correct text" do
      visit '/test'
      expect(page).to have_content("Testing infrastructre working!")
    end

end