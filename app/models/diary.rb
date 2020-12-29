class Diary < ApplicationRecord
  belongs_to :users
  has_many :motivate

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
