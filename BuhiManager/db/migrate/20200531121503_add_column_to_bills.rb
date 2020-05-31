class AddColumnToBills < ActiveRecord::Migration[6.0]
  def change
    add_column :bills, :completed_on, :date
  end
end
