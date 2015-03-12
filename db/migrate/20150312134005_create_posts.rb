class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :message
      t.string :img1
      t.string :img2
      t.integer :vote1
      t.integer :vote2

      t.timestamps
    end
  end
end
