class Movie < ApplicationRecord
  # before_destroy :ensure_no_children

  has_many :bookmarks

  validates :title, :overview, uniqueness: true, length: { minimum: 1 }
end
