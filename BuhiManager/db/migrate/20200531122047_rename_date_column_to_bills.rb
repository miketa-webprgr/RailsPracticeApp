class RenameDateColumnToBills < ActiveRecord::Migration[6.0]
  def change
    rename_column :bills, :date, :paid_on
  end
end
