class AddOrderingToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :ordering, :integer, default: 0
  end
end
