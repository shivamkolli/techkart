class ProductsController < ApplicationController

  def index
    @products = Product.limit(25).page(params[:page])
  end

  def search_products
    @query_data = params.require(:product).permit(:model, :brand, :year, :random_access_memory, :external_storage).delete_if { |key, value| value.blank? }
    @products = Product.where(@query_data).limit(25)
  end

  def download_excel
    query_data = params.require(:query_data).permit(:model, :brand, :year, :random_access_memory, :external_storage)
    @products = Product.where(query_data).limit(25)
    respond_to do |format|
      format.html
      format.xlsx {
        response.headers[
          'Content-Disposition'
        ] = "attachment; filename='products.xlsx'"
      }
    end
  end

end
