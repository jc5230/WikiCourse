# README
Team member names and unis:
Bei Su, bs3305
Jie Chen, jc5230
Zheng Hui, zh2483
Weisheng Wang, ww2609

Step-by-step instructions to run the program locally include setting any necessary environment variables that contain keys or secrets.

git clone https://github.com/jc5230/WikiCourse
cd WikiCourse
bundle install
rake db:migrate
rake db:seed
rails server
On browser: http://127.0.0.1:3000/courses/home

Heroku link
https://rocky-caverns-08658.herokuapp.com/courses/home


Link to your GitHub repo
https://github.com/jc5230/WikiCourse

We have a home page displaying all the courses. We are also able to choose which track on the left-hand side and after selecting, the website will display current classes belonging to such track. After selecting the track, we have to go back to the home button and select the breath option. If no breath is selected, all the courses under the same track will be displayed. If the breadth is selected, only the courses that meet the breadth requirement will be displayed.

Iter2 Update:We add courses detail page to view courses details. We also implement Comment model for courses comment feature. In addition, we add more user stories, Cucumber and Rspec tests.

# heroku deployment
- update: db, config/routes.rb, app
