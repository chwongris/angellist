class AddBioToInvestors < ActiveRecord::Migration
  def change
    add_column :investors, :bio, :text
    add_column :investors, :linkedin_url, :string
    add_column :investors, :investor, :boolean
    add_column :investors, :location_name, :string
    add_column :investors, :blog_url, :string
  end
end
