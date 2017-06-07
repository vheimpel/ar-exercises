class Employee < ActiveRecord::Base

  belongs_to :store

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :store_id

  validate :reasonable_hourly_rate

  def reasonable_hourly_rate
    hourly_rate < 40 && hourly_rate > 200
  end


end
