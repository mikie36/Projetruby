class PersoScene < ActiveRecord::Base
  attr_accessible :perso_id, :scene_id
  belongs_to :scene  # foreign key
  belongs_to :personnage     # foreign key.
   validates :perso_id,  presence: true, :uniqueness => { :scope => [:scene_id] }
  validates :scene_id,  presence: true,:uniqueness => { :scope => [:perso_id] }
end
