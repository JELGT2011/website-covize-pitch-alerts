class PitchEvent < ActiveRecord::Base
  geocoded_by :full_address
  after_validation :geocode

  has_attached_file :photo,
                    :styles => {
                             thumb: '100x100>',
                             square: '200x200#',
                             medium: '300x300>'
                         },
                    :url => '/assets/logos/:id/:style/:basename.:extension',
                    :path => ':rails_root/public/assets/logos/:id/:style/:basename.:extension'

  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

  def full_address
    return [address_1, address_2, city, state, zip].join(" ")
  end
end