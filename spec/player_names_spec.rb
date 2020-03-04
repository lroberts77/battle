feature "filling in form and displaying player names" do
    scenario "enter names and check output" do
        visit '/'
        fill_in('player_1', with: "Liam")
        fill_in('player_2', with: "Francis")
        click_on "submit"
        expect(page).to have_content "Liam", "Francis"
    end

    end
