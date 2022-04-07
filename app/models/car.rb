class Car < ApplicationRecord

    validate :range_details
    validates :colors, presence: true
    validates :photo, presence: true
    validates :make, presence: true
    validates :price, presence: true
    validates :model, presence: true


    def as_json(_trade)
        super(except: %i[created_at updated_at], methods: [:price])
    end

    def price
        self['price'].to_s + ' ' + 'EUR'
    end

    def range_details
        if !self.range.is_a?(Hash) || self.range['unit'].blank? || self.range['distance'].blank?
            self.errors.add(:range, 'You must supply necessary range details!')
        end
    end
end
