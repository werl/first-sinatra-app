class User < ActiveRecord::Base

  has_many :songs
  has_many :upvotes
  has_many :reviews

end
