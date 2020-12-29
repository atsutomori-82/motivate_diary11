class Diary < ApplicationRecord
  belongs_to :users
  has_many :motivate

  
end
