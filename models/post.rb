# -*- encoding : utf-8 -*-
class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic

end
