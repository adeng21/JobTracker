class Job < ActiveRecord::Base

  def self.order_by_newest
    order(application_date: :desc)
  end
end
