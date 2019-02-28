class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :cover_img
      t.string :location
      t.text :description
      t.string :host

      t.timestamps null: false
    end
  end
end
