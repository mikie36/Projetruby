require 'spec_helper'

describe Sujet do
  before { @sujet = Sujet.new(nom: "Example theme") }
  subject { @sujet }
  it { should respond_to(:nom) }
  describe "when name is not present" do
    before { @sujet.nom = " " }
    it { should_not be_valid }
  end
  describe "when name is too long" do
    before { @sujet.nom = "a" * 41 }
    it { should_not be_valid }
  end
  describe "when theme is already create" do
    before do
      same_theme = @sujet.dup
      same_theme.save
    end

    it { should_not be_valid }
  end
end
