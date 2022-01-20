class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  belongs_to :user
  belongs_to :category
  has_many :elements

  has_one_attached :header_image

  validates_presence_of :title, :description
  validates_length_of :description, within: 5..250

  def should_generate_new_friendly_id?
    title_changed?
  end
end
