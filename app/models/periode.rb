class Periode < ActiveRecord::Base
  attr_accessible :date
  has_one :scene
    validates :date,  presence: true

end
