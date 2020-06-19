class DashboardController < ApplicationController
  def index
    CoffeSale.group("strftime('%m-%Y', date_time)").order(date_time: :asc)
  end
end
