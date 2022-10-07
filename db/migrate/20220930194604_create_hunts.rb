class CreateHunts < ActiveRecord::Migration[6.1]
  def change
    create_table :hunts do |t|
      t.string :title
      t.integer :user_id
      t.boolean :public
      t.string :locale

      t.timestamps
    end
  end
end
