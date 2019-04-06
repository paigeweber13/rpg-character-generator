class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.integer :vitality
      t.integer :strength
      t.integer :dexterity
      t.integer :endurance
      t.integer :intelligence
      t.integer :luck
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
