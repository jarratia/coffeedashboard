class DashboardController < ApplicationController
  def index
    #ventas por mes
    @sales_grouped_by_month = CoffeSale.group("strftime('%m-%Y', date_time)").order(date_time: :asc).order(created_at: :asc).sum(:amount)

    #Cantidad de ventas por mes
    @quantity_sales_by_month = CoffeSale.group("strftime('%m-%Y', date_time)").order(date_time: :asc).order(created_at: :asc).count

    @twelve_month_origin = CoffeSale.group_by_month(:date_time, last: 12).order(:origin).count
  
    @six_month_origin = CoffeSale.group_by_month(:date_time, last: 6).order(:origin).count

    @three_month_origin = CoffeSale.group_by_month(:date_time, last: 3).order(:origin).count

    @one_month_origin = CoffeSale.group_by_month(:date_time, last: 1).order(:origin).count

    #Ventas por nombre
    @twelve_month_blend_name = CoffeSale.group(:blend_name).order(:date_time, :asc).count
  end

  
end
