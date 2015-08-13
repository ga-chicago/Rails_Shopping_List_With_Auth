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

    puts '-----PARAMS-----'
    puts params
    puts '----------'
    @product = Product.create(
      :name => params[:product][:name],
      :quantity => params[:product][:quantity].to_i
    )

  end

  def delete

    @product = Product.find(params[:product][:id]).destroy

  end

end
