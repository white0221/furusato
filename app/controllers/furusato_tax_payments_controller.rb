# frozen_string_literal: true

# FurusatoTaxPaymentsController
class FurusatoTaxPaymentsController < ApplicationController
  before_action :set_furusato_tax_payment, only: %i[show update destroy]

  # GET /furusato_tax_payments
  def index
    @furusato_tax_payments = FurusatoTaxPayment.all

    render json: @furusato_tax_payments
  end

  # GET /furusato_tax_payments/1
  def show
    render json: @furusato_tax_payment
  end

  # POST /furusato_tax_payments
  def create
    @furusato_tax_payment = FurusatoTaxPayment.new(furusato_tax_payment_params)

    if @furusato_tax_payment.save
      render json: @furusato_tax_payment, status: :created, location: @furusato_tax_payment
    else
      render json: @furusato_tax_payment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /furusato_tax_payments/1
  def update
    if @furusato_tax_payment.update(furusato_tax_payment_params)
      render json: @furusato_tax_payment
    else
      render json: @furusato_tax_payment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /furusato_tax_payments/1
  def destroy
    @furusato_tax_payment.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_furusato_tax_payment
    @furusato_tax_payment = FurusatoTaxPayment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def furusato_tax_payment_params
    params.fetch(:furusato_tax_payment, {})
  end
end
