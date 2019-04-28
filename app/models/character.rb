class Character < ApplicationRecord
    has_one :stat, dependent: :destroy
    accepts_nested_attributes_for :stat, allow_destroy: true
    
    has_many :comments, dependent: :destroy
    
    enum race: [:human, :dwarf, :dragon, :elf]
    enum characterClass: [:warrior, :mage, :lich, :assassin]
    enum backstory: [:hero, :fallen, :monk, :knight, :criminal]
    
end
