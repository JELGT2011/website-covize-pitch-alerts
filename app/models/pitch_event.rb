class PitchEvent < ActiveRecord::Base
    geocoded_by :full_address
    after_validation :geocode
    
    def full_address
        [address_1, address_2, city, state, zip].join(" ")
    end
end
