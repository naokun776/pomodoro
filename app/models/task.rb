class Task < ActiveRecord::Base
  attr_accessible :memo, :taskName, :taskStatus
end
