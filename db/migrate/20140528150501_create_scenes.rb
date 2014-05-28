class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.integer :lieu_id
      t.integer :perso_id
      t.integer :periode_id
      t.text :recit

      t.timestamps
    end
  end
end
