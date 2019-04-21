class RemoveTelFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :tel
  end
end
