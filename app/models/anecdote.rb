class Anecdote < ActiveRecord::Base
  attr_accessible :recit, :sujet_id, :theme_id
  belongs_to :theme
  has_many :theme_anecdote
  has_many :theme, through: :theme_anecdote
end
