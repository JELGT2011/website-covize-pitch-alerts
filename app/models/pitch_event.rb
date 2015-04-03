class PitchEvent < ActiveRecord::Base
  geocoded_by :full_address
  after_validation :geocode

  has_attached_file :logo, styles: {
                             thumb: '100x100>',
                             square: '200x200#',
                             medium: '300x300>'
                         }

  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/

  def full_address
    return [address_1, address_2, city, state, zip].join(" ")
  end
end