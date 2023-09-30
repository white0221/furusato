class CreateFurusatoTaxPayments < ActiveRecord::Migration[7.0]
  def change
    create_table :furusato_tax_payments do |t|
      t.string  :government_name, null: false
      t.date    :payment_date, null: false
      t.integer :amount, null: false
      t.string  :url
      t.text    :memo

      t.timestamps
    end
  end
end
