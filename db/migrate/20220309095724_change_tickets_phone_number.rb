class ChangeTicketsPhoneNumber < ActiveRecord::Migration[5.2]
  def change
    change_column :tickets, :phone_number, :string
  end
end
