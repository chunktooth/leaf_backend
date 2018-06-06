class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :img
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
