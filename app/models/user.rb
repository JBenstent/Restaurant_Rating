class User < ActiveRecord::Base
  has_many :ratings
  has_many :restaurants
end
