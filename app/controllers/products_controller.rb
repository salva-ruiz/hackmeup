class ProductsController < ApplicationController

  def index
    @order = 'asc'
    @order = 'desc' if params[:_order] == 'desc'

    @products = Product.order("name #{@order}")
    @sort = 'title'
    if params[:_sort] == 'price'
      @products = @products.reorder("price #{@order}")
      @sort = 'price'
    end

    @search = params[:title]
    @products = @products.where(["lower(name) = ?", @search.downcase]) unless @search.blank?
    @products = @products.order('name')
    
  end

end
