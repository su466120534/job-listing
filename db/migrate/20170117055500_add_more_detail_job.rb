class AddMoreDetailJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :wage_uper_bound, :integer
    add_column :jobs, :wage_lower_bound, :integer
    add_column :jobs, :contact_email, :string
  end
end
