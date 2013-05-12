class UserAccount < ActiveRecord::Base
  attr_accessible :emailAddress, :userId, :userName
end
