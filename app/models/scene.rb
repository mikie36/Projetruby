class Scene < ActiveRecord::Base
  attr_accessible :lieu_id, :periode_id, :perso_id, :recit
  belongs_to :lieu
  belongs_to :periode
  has_many :perso_scene
  has_many :personnage, through: :perso_scene
validates :lieu_id,  presence: true
  validates :pederio_id,  presence: true
  validates :perso_id,  presence: true
  validates :recit,  presence: true

end
