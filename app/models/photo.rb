class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  has_many   :followers,
             :through => :user,
             :source => :follows

  has_many   :fans,
             :through => :likes,
             :source => :user

  # Validations

  validates :image, :presence => true

  validates :user_id, :presence => true

end
