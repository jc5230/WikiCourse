class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.integer :call
      t.string :number
      t.string :title
      t.integer :pts
      t.text :description
      t.string :track
      t.string :breadth
      t.integer :required
      t.integer :elective
      t.string :elective_group
      t.string :required_group

      t.timestamps
    end
  end
end
