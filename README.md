# README
Step-by-step instructions

git clone https://github.com/jc5230/WikiCourse
cd WikiCourse
bundle install
rake db:migrate
rake db:seed
rails server
On browser: http://127.0.0.1:3000/courses/home

Summary with your app's features

We have a home page displaying all the courses. We are also able to choose which track on the left hand side and after selecting, the website will display current classes belonging to such track. After selecting the track, we have to go back to the home button and select the breath option. If no breath is selected, all the courses under the same track will be displayed. If breath is selected, only the courses that meet the breadth requirement will be displayed.

Link to your GitHub repo
https://github.com/jc5230/WikiCourse
