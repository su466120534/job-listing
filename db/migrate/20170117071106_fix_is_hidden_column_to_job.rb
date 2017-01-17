class FixIsHiddenColumnToJob < ActiveRecord::Migration[5.0]
  def change
    remove_column :jobs, :is_hidden
  end
end
