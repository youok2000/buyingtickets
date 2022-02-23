class AddColumnToHosts < ActiveRecord::Migration[5.2]
  def change
    add_column :hosts, :password, :integer
  end
end
