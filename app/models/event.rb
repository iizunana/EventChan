class Event < ActiveRecord::Base
  has_many :join_events
end
