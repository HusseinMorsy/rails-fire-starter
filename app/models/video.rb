class Video < ApplicationRecord
  validates :title, presence: true
  validates :duration, presence: true
end
