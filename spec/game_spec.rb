require 'game'

describe Game do

    subject(:game) {Game.new(player1, player2)}
    let(:player1) {double :player}
    let(:player2) {double :player}

    describe "#receive_damage" do
        it "player receives damage" do
           expect {game.player2.receive_damage}.to change {game.player2.hp}.by(-10)
        end
    end

    describe "#player1" do
        it "receives the first player" do
            expect(game.player1).to eq player1
        end
    end
end