# frozen_string_literal: true

class SalesController < ApplicationController
  before_action :set_sale, only: %i[show]

  def index
    @sales = Sale.includes(:purchaser, :product, provider: [:address]).all
  end

  def show; end

  def import; end

  private

  def set_sale
    @sale = Sale.find(params[:id])
  end

  def sale_params
    params.require(:sale).permit(:purchaser_id, :product_id, :quantity, :address_id, :provider_id)
  end
end
