class WorkVolume < ActiveHash::Base
  self.data = [
    { id: 1, name: '--'}
    { id: 2, name: 'かなりキツめ'}
    { id: 3, name: '通常通り'}
    { id: 4, name: '少し軽め'}
  ]

  include AcriveHash::Associations
  has_many :diaries

end