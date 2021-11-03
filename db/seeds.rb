# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

courses = [
    {   :call => 12406, 
        :number => "COMS W4111", 
        :title => 'INTRODUCTION TO DATABASES', 
        :pts => 3, 
        :description => 'some intro for DB',
        :track => 'Machine Learning',
        :breadth => 'B1', 
        :required => 0, 
        :elective => 1, 
        :elective_group => '1', 
        :required_group => '1', 
    },
    {   :call => 12406, 
        :number => "COMS W4111", 
        :title => 'INTRODUCTION TO DATABASES', 
        :pts => 3, 
        :description => 'some intro for DB',
        :track => 'Software System',
        :breadth => 'B1', 
        :required => 1, 
        :elective => 1, 
        :elective_group => '1', 
        :required_group => '1', 
    },
    {   :call => 12547, 
        :number => "COMS W4115", 
        :title => 'PROGRAMMING LANG & TRANSL', 
        :pts => 3, 
        :description => 'some intro for PLT',
        :track => 'Software System',
        :breadth => 'B1', 
        :required => 1, 
        :elective => 1, 
        :elective_group => '1', 
        :required_group => '1', 
    },
    {   :call => 12547,
        :number => "COMS W4115",
        :title => 'PROGRAMMING LANG & TRANSL',
        :pts => 3,
        :description => 'some intro for PLT',
        :track => 'Software System',
        :breadth => 'B3',
        :required => 1,
        :elective => 1,
        :elective_group => '1',
        :required_group => '1',
    }
    ]

courses.each do |course|
  Course.create!(course)
end


# requirements = [
#     {   :number => "COMS W4111", 
#         :title => 'INTRODUCTION TO DATABASES', 
        
#     },
#     {   :number => "COMS W4111", 
#         :title => 'INTRODUCTION TO DATABASES', 
        
#     },
#     {   :number => "COMS W4115", 
#         :title => 'PROGRAMMING LANG & TRANSL', 
        
#     },
#   	]

# requirements.each do |requirement|
#   Requirement.create!(requirement)
# end