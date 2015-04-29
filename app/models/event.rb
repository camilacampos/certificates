class Event < ActiveRecord::Base
  has_and_belongs_to_many :participants

  default_scope { order(created_at: :desc) }

  validates_presence_of :name
  validates_presence_of :location
  validates_presence_of :start_date
  validates_presence_of :end_date
  validates_presence_of :workload
end
