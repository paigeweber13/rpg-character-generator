class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.integer :race
      t.integer :characterClass
      t.integer :backstory

      t.timestamps
    end
  end
end
