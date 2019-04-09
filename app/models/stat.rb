class Stat < ApplicationRecord
  belongs_to :character

  # validation
  validates_numericality_of :vitality, :greater_than => 0
  validates_numericality_of :strength, :greater_than => 0
  validates_numericality_of :dexterity, :greater_than => 0
  validates_numericality_of :endurance, :greater_than => 0
  validates_numericality_of :intelligence, :greater_than => 0
  validates_numericality_of :luck, :greater_than => 0
end
