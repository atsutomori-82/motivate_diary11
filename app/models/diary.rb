class Diary < ApplicationRecord
  belongs_to :user
  has_many :cheer_up
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :condition
  belongs_to :motivation
  belongs_to :work_volume  

  with_options presence: true do
    validates :calendar_date
    validates :text
  end

  with_options  numericality: { other_than: 1 } do
    validates :condition_id
    validates :motivation_id
    validates :work_volume_id
  end

  

end
