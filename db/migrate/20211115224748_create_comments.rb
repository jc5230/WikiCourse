class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :user_id
      t.integer :call
      t.integer :rating
      t.integer :workload
      t.text :description
      t.string :professor
      t.integer :upvote
      t.integer :downvote

      t.timestamps
    end
  end
end
