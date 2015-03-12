class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :count
      t.belongs_to :image, index: true

      t.timestamps
    end
    add_foreign_key :votes, :images
  end
end
