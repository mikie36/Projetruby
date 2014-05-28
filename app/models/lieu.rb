class Lieu < ActiveRecord::Base
  attr_accessible :nom
  has_one :scene
    validates :nom,  presence: true, length: { maximum: 40 },uniqueness: true
end
