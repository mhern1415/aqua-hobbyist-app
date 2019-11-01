class CreateAquariumTable < ActiveRecord::Migration
  def change
    create_table :aquariums do |t|
      t.string :title
      t.string :image_url
      t.string :size
      t.string :flora
      t.integer :user_id
      
      t.timestamps null: false
    end
  end
end
