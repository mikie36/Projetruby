class CreateAnecdotes < ActiveRecord::Migration
  def change
    create_table :anecdotes do |t|
      t.integer :sujet_id
      t.integer :theme_id
      t.text :recit

      t.timestamps
    end
  end
end
