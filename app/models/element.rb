class Element < ApplicationRecord
  belongs_to :post

  validates :element_type, inclusion: { in: ['paragraph', 'image', 'video-embed', 'carousel'] }

  has_rich_text :content
  has_one_attached :image
  has_many_attached :carousel

  def paragraph?
    element_type == 'paragraph'
  end

  def image?
    element_type == 'image'
  end 

  def carousel?
    element_type == 'carousel'
  end 
end
