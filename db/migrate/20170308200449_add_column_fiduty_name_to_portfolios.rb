class AddColumnFidutyNameToPortfolios < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolios, :fiduty_name, :string
  end
end
