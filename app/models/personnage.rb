class Personnage < ActiveRecord::Base
  attr_accessible :nom, :prenom
  has_many :perso_scene
  has_many :scene, through: :perso_scene
    validates :nom,  presence: true, length: { maximum: 40 }, :uniqueness => { :scope => [:prenom] }
  validates :prenom,  presence: true, length: { maximum: 40 },:uniqueness => { :scope => [:nom] }
end
