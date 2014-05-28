class ThemeAnecdote < ActiveRecord::Base
  attr_accessible :anecdote_id, :theme_id
  belongs_to :theme  # foreign key
  belongs_to :anecdore     # foreign key
  validates :anecdote_id,  presence: true, :uniqueness => { :scope => [:theme_id] }
  validates :theme_id,  presence: true,:uniqueness => { :scope => [:anecdote_id] }
end
