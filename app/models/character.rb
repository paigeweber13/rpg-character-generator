class Character < ApplicationRecord
    has_one :stat, dependent: :destroy
    accepts_nested_attributes_for :stat, allow_destroy: true
    
    enum race: [:human, :dwarf, :dragon, :elf]
    enum characterClass: [:warrior, :mage, :lich, :assassin]
    enum backstory: [:hero, :fallen, :monk, :knight, :criminal]
    
    validates :name, presence: true, length: {minimum: 2}
    validates :race, :presence => true, if: :active_or_race?
    validates :characterClass, presence: true, if: :active_or_characterClass?
    validates :backstory, presence: true, if: :active_or_backstory?
    
    def active?
        status == 'active'
    end
    
    def active_or_race?
        status.include?('race') || active?
    end
    
    def active_or_characterClass?
        status.to_s.include?('characterClass') || active?
    end
    
    def active_or_backstory?
        status.to_s.include?('backstory') || active?
    end
    
end
