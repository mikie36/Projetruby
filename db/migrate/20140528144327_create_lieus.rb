class CreateLieus < ActiveRecord::Migration
  def change
    create_table :lieus do |t|
      t.string :nom

      t.timestamps
    end
  end
end
