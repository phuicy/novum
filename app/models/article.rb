class Article < ActiveRecord::Base
  belongs_to :user
  has_many :sections
  acts_as_votable 
end
