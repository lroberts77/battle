feature 'Player hp' do
    scenario "viewing p2 hp" do
        sign_in_and_play
        expect(page).to have_content("Francis: 60HP")
    end

    scenario "viewing p1 hp" do
       sign_in_and_play
        expect(page).to have_content("Liam: 60HP")
    end

    
end