class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :bio
      t.string :locale
      
      t.timestamps
    end
  end
end
