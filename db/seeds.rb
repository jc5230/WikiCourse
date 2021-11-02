# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

courses = [{cid: 1, :title => 'Aladdin', :pts => 3, :description => '25-Nov-1992'},
    	  {cid: 2, :title => 'The Terminator', :pts => 4, :description => '26-Oct-1984'},
  	 ]

courses.each do |course|
  Course.create!(course)
end