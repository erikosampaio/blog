class Post < ApplicationRecord
  include PgSearch
  extend FriendlyId
  
  has_many :comments
  
  validates :title, :author, :body, presence: true

  friendly_id :title, use: :slugged

  # pg_search_scope :search,
  #   against: %i[title author body]
end
