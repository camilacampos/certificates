class Participant < ActiveRecord::Base
  has_and_belongs_to_many :events

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :event
end
