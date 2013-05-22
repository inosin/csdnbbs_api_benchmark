# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  has_many :topics
  has_many :posts

end
