class Section < ActiveRecord::Base
  belongs_to :article
  acts_as_votable 
end
