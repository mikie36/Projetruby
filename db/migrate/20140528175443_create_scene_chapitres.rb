class CreateSceneChapitres < ActiveRecord::Migration
  def change
    create_table :scene_chapitres do |t|
      t.integer :scene_id
      t.integer :chapitre_id

      t.timestamps
      end
      add_index(:scene_chapitres, :scene_id)
      add_index(:scene_chapitres, :chapitre_id)
  end
end
