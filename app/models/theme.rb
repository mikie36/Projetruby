class Theme < ActiveRecord::Base
  attr_accessible :nom
  has_many :theme_anecdote
  has_many :anecdote, through: :theme_anecdote
  belongs_to :sujet
  validates :nom,  presence: true, length: { maximum: 40 },uniqueness: true
end
