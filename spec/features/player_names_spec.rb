feature "filling in form and displaying player names" do
    scenario "enter names and check output" do
     sign_in_and_play
        expect(page).to have_content ("Liam VS Francis")
    end

    end
