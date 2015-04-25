class Event < ActiveRecord::Base
  has_and_belongs_to_many :participants

  default_scope { order(created_at: :desc) }

  validates_presence_of :name
end
