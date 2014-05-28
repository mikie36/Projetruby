require 'spec_helper'

describe PersoScene do
  before { @persoscene = PersoScene.new(perso_id:"-1",scene_id:"-1") }
  subject { @persoscene }
  it { should respond_to(:perso_id) }
  it { should respond_to(:scene_id) }
  describe "when name is not present" do
    before { @persoscene.perso_id = " " }
    it { should_not be_valid }
  end


 #############################
 describe "when scene_id is not present" do
    before { @persoscene.scene_id = " " }
    it { should_not be_valid }
  end
 #############################

  describe "when persoscene is already create" do
    before do
      same_persoscene = @persoscene.dup
      same_persoscene.save
    end

    it { should_not be_valid }
  end
end
