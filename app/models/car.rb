class Car < ApplicationRecord
    def as_json(_trade)
        super(except: %i[created_at updated_at])
      end
end
