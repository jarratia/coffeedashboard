class DashboardController < ApplicationController
  def index
    @sales_grouped_by_month = CoffeSale.group("strftime('%m-%Y', date_time)").order(date_time: :asc).order(created_at: :asc).sum(:amount)

    @quantity_sales_by_month = CoffeSale.group("strftime('%m-%Y', date_time)").order(date_time: :asc).order(created_at: :asc).count
  end

  
end
