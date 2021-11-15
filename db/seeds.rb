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
    {   :call => 12539,
        :number => "COMS W4118",
        :title => 'OPERATING SYSTEMS I',
        :pts => 3,
        :description => 'some intro for OS',
        :track => 'Software System',
        :breadth => 'B2',
        :required => 1,
        :elective => 0,
        :elective_group => '0',
        :required_group => '0',
    },
    {   :call => 12503,
        :number => "COMS W4701",
        :title => 'ARTIFICIAL INTELLIGENCE',
        :pts => 3,
        :description => 'some intro for AI',
        :track => 'Software System',
        :breadth => 'B3',
        :required => 0,
        :elective => 0,
        :elective_group => '0',
        :required_group => '0',
    }
    ]

courses.each do |course|
    Course.create!(course)
end



comments = [
    {   :call => 12406, 
        :rating => 5, 
        :workload => 1, 
        :description => 'this course is so coooooooooooooooool',
        :professor => "Mr. Professor", 
        :upvote => 5, 
        :downvote => 0,  
    },
    {   :call => 12406, 
        :rating => 3, 
        :workload => 5, 
        :description => 'this course is so difficult',
        :professor => "Mr. Professor", 
        :upvote => 5, 
        :downvote => 0,  
    },
    {   :call => 12547, 
        :rating => 3, 
        :workload => 3, 
        :description => 'this course is fun',
        :professor => "Mr. Professor Fun", 
        :upvote => 5, 
        :downvote => 5,  
    }
]


comments.each do |comment|
    Comment.create!(comment)
end