class AddAngelIdToInvestors < ActiveRecord::Migration
  def change
    add_column :investors, :angel_id, :integer
  end
end
