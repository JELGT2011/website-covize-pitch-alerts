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

  scope :local, -> (local) { where local: local }
  scope :national, -> (national) { where national: national }
  scope :female_founder, -> (female_founder) { where female_founder: female_founder }
  scope :ethnic_founder, -> (ethnic_founder) { where ethnic_founder: ethnic_founder }

  private

  def full_address
    return [address_1, address_2, city, state, zip].join(" ")
  end
end