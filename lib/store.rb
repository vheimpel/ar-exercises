class Store < ActiveRecord::Base

  has_many :employees

  validates_presence_of :name
  validate :store_name_length
  validate :revenue_test

  def store_name_length
    errors.add(:name) unless name.length > 3
  end

  def revenue_test
    errors.add(:annual_revenue, "Must include annual revenue") if annual_revenue.nil?
    errors.add(:annual_revenue) unless annual_revenue > 0
  end


end
