class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.integer :strength
      t.integer :intelligence
      t.integer :agility
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
