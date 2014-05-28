require 'spec_helper'

describe Periode do
  before { @periode = Periode.new(date: "14/10/2011") }
  subject { @periode }
  it { should respond_to(:date) }
  describe "when name is not present" do
    before { @periode.date = " " }
    it { should_not be_valid }
  end

end
