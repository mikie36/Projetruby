class CreateSujets < ActiveRecord::Migration
  def change
    create_table :sujets do |t|
      t.string :nom

      t.timestamps
    end
  end
end
