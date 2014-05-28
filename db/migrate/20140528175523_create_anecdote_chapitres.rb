class CreateAnecdoteChapitres < ActiveRecord::Migration
  def change
    create_table :anecdote_chapitres do |t|
      t.integer :anecdote_id
      t.integer :chapitre_id

      t.timestamps
    end
    add_index(:anecdote_chapitres, :anecdote_id)
    add_index(:anecdote_chapitres, :chapitre_id)
  end
end
