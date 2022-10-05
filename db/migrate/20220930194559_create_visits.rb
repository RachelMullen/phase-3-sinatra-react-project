class CreateVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :visits do |t|
      t.integer :user_id
      t.integer :place_id
      t.integer :hunt_id

      t.boolean :complete

      t.boolean :wishlist
      t.boolean :favorite
      t.boolean :avoid

      t.timestamps
    end
  end
end
