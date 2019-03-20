class RenameCover < ActiveRecord::Migration
  def change
    rename_column :events, :cover, :cover_filename
  end
end
