require 'spec_helper'

describe Personnage do
  before { @personnage = Personnage.new(nom: "Example nom",prenom: "Example preonom") }
  subject { @personnage }
  it { should respond_to(:nom) }
  it { should respond_to(:prenom) }
  describe "when name is not present" do
    before { @personnage.nom = " " }
    it { should_not be_valid }
  end
  describe "when name is too long" do
    before { @personnage.nom = "a" * 41 }
    it { should_not be_valid }
  end

 #############################
 describe "when prenom is not present" do
    before { @personnage.prenom = " " }
    it { should_not be_valid }
  end
  describe "when prenom is too long" do
    before { @personnage.prenom = "a" * 41 }
    it { should_not be_valid }
  end
 #############################

  describe "when personnage is already create" do
    before do
      same_personnage = @personnage.dup
      same_personnage.save
    end

    it { should_not be_valid }
  end
end
