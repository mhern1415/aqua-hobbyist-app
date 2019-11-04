class CreateTanks < ActiveRecord::Migration
  def change
    create_table :tanks do |t|
      t.string :title
      t.string :image_url
      t.string :size
      t.string :flora
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
