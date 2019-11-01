class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name 
      t.string :image_url
      t.text :bio
      t.string :password_digest 
      
      t.timestamps null: false
      
    end
  end
end

