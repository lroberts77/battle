require 'player'

describe Player do

    subject(:liam) {Player.new("Liam")}
    subject(:francis) {Player.new("Francis")}

    # it {is_expected.to respond_to :returns_name}

  describe "#returns_name" do
      it "returns its name" do
          expect(liam.name).to eq "Liam"
      end
    end

    describe "#receive_damage" do
        it "player receives damage" do
            expect {francis.receive_damage}.to change {francis.hp}.by(-10)
        end
    end
  end