class Motivation < ActiveHash::Base
  self.data = [
    { id: 1, name: '--'},
    { id: 2, name: 'やる気に満ち溢れている'},
    { id: 3, name: 'いつも通り'},
    { id: 4, name: 'モチベーション低め'}
  ]

  include AcriveHash::Associations
  has_many :diaries

end