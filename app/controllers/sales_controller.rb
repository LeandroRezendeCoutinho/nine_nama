# frozen_string_literal: true

class SalesController < ApplicationController
  before_action :set_sale, only: %i[show]

  def index
    @sales = Sale.includes(:purchaser, :product, provider: [:address]).all
  end

  def show; end

  def import
    if request.get?
      @file = TemporaryFile.new
    elsif request.post?
      return flash[:alert] = 'Escolha um arquivo' unless valid_file_params?

      temp_file = TemporaryFile.new
      temp_file.bin.attach(file_params[:bin])

      if temp_file.save
        parsed_file = FileParser.call(temp_file.bin.download)
        SalesCreator.call(parsed_file)

        temp_file.destroy
        redirect_to :root
      else
        redirect_back fallback_location: import_sales_url
      end
    end
  end

  private

  def set_sale
    @sale = Sale.find(params[:id])
  end

  def sale_params
    params.require(:sale).permit(:purchaser_id, :product_id, :quantity, :address_id, :provider_id)
  end

  def file_params
    params.require(:temporary_file).permit(:bin)
  end

  def valid_file_params?
    file_params.present?
  rescue ActionController::ParameterMissing
    false
  end
end
