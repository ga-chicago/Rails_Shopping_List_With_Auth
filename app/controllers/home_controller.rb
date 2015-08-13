class HomeController < ApplicationController
  def index

    # list all of the products!
    @products = Product.all

  end

  def new

    # create a form that displays product info
    # to create
    @product = Product.new

  end

  def create

    @product.create(
      :name => 'test',
      :quantity '42'.to_i
    )

  end

  def delete

    @product.find(1).destroy

  end

end
