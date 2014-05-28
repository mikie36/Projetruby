class CreatePersoScenes < ActiveRecord::Migration
  def change
    create_table :perso_scenes do |t|
      t.integer :perso_id
      t.integer :scene_id

      t.timestamps
    end
    add_index(:perso_scenes, :perso_id)
    add_index(:perso_scenes, :scene_id)
  end
end
