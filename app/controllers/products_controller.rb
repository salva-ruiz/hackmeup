class ProductsController < ApplicationController

  def index
    @products = Product.order('code')
  end

end
