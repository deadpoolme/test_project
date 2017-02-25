class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def search
    search = params[:search]
    @products = Product.joins(:company).where('companies.active = ? AND products.active = ? AND products.name LIKE ?', true, true, "%#{search}%")

    respond_to do |format|
      flash.now[:notice] = "Can not find this product!" unless @products.present?
      format.js {}
    end
  end
end
