class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :user_courses do |t|
      t.string :username
      t.string :course_number
    end
  end
end
