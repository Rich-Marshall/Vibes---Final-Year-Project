class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.text :shout

      t.timestamps null: false
    end
  end
end
