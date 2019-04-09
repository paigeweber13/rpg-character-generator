class Stat < ApplicationRecord
  belongs_to :character

  minimum_stat_value = 10
  # validation
  validates_numericality_of :vitality, :greater_than_or_equal_to => 
    minimum_stat_value
  validates_numericality_of :strength, :greater_than_or_equal_to => 
    minimum_stat_value
  validates_numericality_of :dexterity, :greater_than_or_equal_to => 
    minimum_stat_value
  validates_numericality_of :endurance, :greater_than_or_equal_to => 
    minimum_stat_value
  validates_numericality_of :intelligence, :greater_than_or_equal_to => 
    minimum_stat_value
  validates_numericality_of :luck, :greater_than_or_equal_to => 
    minimum_stat_value
end
