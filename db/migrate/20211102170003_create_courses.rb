class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.integer :cid
      t.string :title
      t.integer :pts
      t.text :description

      t.timestamps
    end
  end
end
