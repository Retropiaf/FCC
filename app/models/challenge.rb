class Challenge < ApplicationRecord
  belongs_to :chapter
  has_many :description_paragraphers
end
