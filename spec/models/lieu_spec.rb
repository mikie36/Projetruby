require 'spec_helper'

describe Lieu do
  before { @lieu = Lieu.new(nom: "Example lieu") }
  subject { @lieu }
  it { should respond_to(:nom) }
  describe "when name is not present" do
    before { @lieu.nom = " " }
    it { should_not be_valid }
  end
  describe "when name is too long" do
    before { @lieu.nom = "a" * 41 }
    it { should_not be_valid }
  end
  describe "when lieu is already create" do
    before do
      same_lieu = @lieu.dup
      same_lieu.save
    end

    it { should_not be_valid }
  end
end
