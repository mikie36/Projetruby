class CreatePersonnages < ActiveRecord::Migration
  def change
    create_table :personnages do |t|
      t.string :nom
      t.string :prenom

      t.timestamps
    end
  end
end
