class ProductsController < ApplicationController

  def index
    @products = Product.order('code')
    @search = params[:title]
    @products = @products.where(["lower(name) = ?", @search.downcase]) unless @search.blank?
  end

end
