class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def search
    search = params[:search]
    @products = Product.joins(:company).where('companies.active = ? AND products.active = ? AND products.name LIKE ?', true, true, "%#{search}%")

    respond_to do |format|
      format.js   {}
    end
  end
end
