class User < ActiveRecord::Base
  has_many :posts
  validates :name, presence: true
  validates :age, presence: true
end
