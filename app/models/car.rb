class Car < ApplicationRecord

    def as_json(_trade)
        super(except: %i[created_at updated_at], methods: [:price])
    end

    def price
        self['price'].to_s + ' ' + 'EUR'
    end
end
