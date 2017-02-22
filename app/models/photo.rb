class Photo < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :image, :presence => true

  validates :user_id, :presence => true

end
