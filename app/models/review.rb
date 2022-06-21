# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, numericality: { in: 0..5 }
  validates :content, presence: true
end
