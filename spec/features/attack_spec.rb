feature "attack" do
    scenario 'p1 attacks p2' do
        sign_in_and_play
        click_link "attack" 
        expect(page).to have_content "Liam has attacked Francis" 
    end
end

feature "attack damage" do
    scenario "attack reduces p2 hp by 10" do
    sign_in_and_play
    click_link "attack"
    expect(page).to have_content "Francis has taken 10 damage"
    end

    scenario 'reduce Player 2 HP by 10' do
        sign_in_and_play
        click_link 'attack'
        click_link 'ok'
        expect(page).not_to have_content 'Francis: 60HP'
        expect(page).to have_content 'Francis: 50HP'
    
    end
end