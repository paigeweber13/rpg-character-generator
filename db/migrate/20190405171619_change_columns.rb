class ChangeColumns < ActiveRecord::Migration[5.2]
  def change
    change_column :characters, :race, :integer
    change_column :characters, :characterClass, :integer
    change_column :characters, :backstory, :integer
  end
end
