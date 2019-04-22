class AddTicketLinkToEvent < ActiveRecord::Migration
  def change
    add_column :events, :ticket, :string
  end
end
