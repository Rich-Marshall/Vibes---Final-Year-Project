class RenameCoverImg < ActiveRecord::Migration
  def change
    rename_column :events, :cover_img, :cover
  end
end
