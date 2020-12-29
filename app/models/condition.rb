class Condition < ActiveHash::Base
  self.data = [
    { id: 1, name: '--'}
    { id: 2, name: '絶好調'}
    { id: 3, name: 'まあまあ'}
    { id: 4, name: 'あまり良くなかった'}
  ]

  include AcriveHash::Associations
  has_many :diaries

end