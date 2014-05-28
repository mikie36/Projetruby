class CreateThemeAnecdotes < ActiveRecord::Migration
  def change
    create_table :theme_anecdotes do |t|
      t.integer :theme_id
      t.integer :anecdote_id

      t.timestamps
    end
    add_index(:theme_anecdotes, :theme_id)
    add_index(:theme_anecdotes, :anecdote_id)
  end
end
