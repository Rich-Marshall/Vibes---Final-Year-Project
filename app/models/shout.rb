class Shout < ActiveRecord::Base
  belongs_to :user

  validates :shout, :length => { :maximum => 300, :message => "cant be more than 300 characters"}
end
