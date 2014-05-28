class Sujet < ActiveRecord::Base
  attr_accessible :nom
  has_one :ancedote
    validates :nom,  presence: true, length: { maximum: 40 },uniqueness: true
end
