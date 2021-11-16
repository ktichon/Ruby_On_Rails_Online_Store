class Genre < ApplicationRecord
  has_many :book_genres, dependent: :delete_all
  has_many :books, through: :book_genres
  validates :genre_name, presence: true

end
