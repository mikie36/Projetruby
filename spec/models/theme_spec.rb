# == Schema Information
#
# Table name: themes
#
#  id         :integer          not null, primary key
#  theme_id   :integer
#  nom        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Theme do
  before { @theme = Theme.new(nom: "Example theme") }
  subject { @theme }
  it { should respond_to(:nom) }
  describe "when name is not present" do
    before { @theme.nom = " " }
    it { should_not be_valid }
  end
  describe "when name is too long" do
    before { @theme.nom = "a" * 41 }
    it { should_not be_valid }
  end
  describe "when theme is already create" do
    before do
      same_theme = @theme.dup
      same_theme.save
    end

    it { should_not be_valid }
  end
end
