require 'spec_helper'

describe ThemeAnecdote do
  before { @themeanecdote = ThemeAnecdote.new(theme_id:"-1",anecdote_id:"-1") }
  subject { @themeanecdote }
  it { should respond_to(:theme_id) }
  it { should respond_to(:anecdote_id) }
  describe "when name is not present" do
    before { @themeanecdote.theme_id = " " }
    it { should_not be_valid }
  end


 #############################
 describe "when anecdote_id is not present" do
    before { @themeanecdote.anecdote_id = " " }
    it { should_not be_valid }
  end
 #############################

  describe "when themeanecdote is already create" do
    before do
      same_themeanecdote = @themeanecdote.dup
      same_themeanecdote.save
    end

    it { should_not be_valid }
  end
end
