class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :list, scope: :movie
end

# Un signet doit être lié à un film et une liste, et les associations [film, liste] doivent être uniques.
# Le commentaire associé à un signet ne peut pas avoir moins de 6 caractères.
