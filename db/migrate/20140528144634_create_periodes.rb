class CreatePeriodes < ActiveRecord::Migration
  def change
    create_table :periodes do |t|
      t.date :date

      t.timestamps
    end
  end
end
