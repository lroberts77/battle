
def sign_in_and_play
    visit '/'
    fill_in :player_1, with: "Liam"
    fill_in :player_2, with: "Francis"
    click_button "submit"
end