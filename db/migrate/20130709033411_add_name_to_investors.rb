class AddNameToInvestors < ActiveRecord::Migration
  def change
    add_column :investors, :name, :string
  end
end
