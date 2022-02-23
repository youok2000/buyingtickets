class AddColumnToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :gender, :string
    add_column :tickets, :phone_number, :integer
    add_column :tickets, :email, :string
  end
end
