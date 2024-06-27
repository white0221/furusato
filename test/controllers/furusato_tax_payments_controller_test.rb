# frozen_string_literal: true

require 'test_helper'

class FurusatoTaxPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @furusato_tax_payment = furusato_tax_payments(:one)
  end

  test 'should get index' do
    get furusato_tax_payments_url, as: :json
    assert_response :success
  end

  test 'should create furusato_tax_payment' do
    assert_difference('FurusatoTaxPayment.count') do
      post furusato_tax_payments_url, params: { furusato_tax_payment: {} }, as: :json
    end

    assert_response :created
  end

  test 'should show furusato_tax_payment' do
    get furusato_tax_payment_url(@furusato_tax_payment), as: :json
    assert_response :success
  end

  test 'should update furusato_tax_payment' do
    patch furusato_tax_payment_url(@furusato_tax_payment), params: { furusato_tax_payment: {} }, as: :json
    assert_response :success
  end

  test 'should destroy furusato_tax_payment' do
    assert_difference('FurusatoTaxPayment.count', -1) do
      delete furusato_tax_payment_url(@furusato_tax_payment), as: :json
    end

    assert_response :no_content
  end
end
