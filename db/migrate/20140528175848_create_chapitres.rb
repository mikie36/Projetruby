class CreateChapitres < ActiveRecord::Migration
  def change
    create_table :chapitres do |t|
      t.string :titre
      t.integer :numero
      t.integer :scene_id
      t.integer :anecdote_id

      t.timestamps
    end
  end
end
