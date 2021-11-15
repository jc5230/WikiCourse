require 'rails_helper'

RSpec.describe CoursesController, type: :controller do

  before(:all) do
    @course1 = Course.create!(
      :call => 12406, 
      :title => "INTRODUCTION TO DATABASES",
      :number => "COMS W4111",
      :pts => 3,
      :description => "some intro for DB",
      :track => "Machine Learning",
      :breadth => "B1",
      :required => 0,
      :elective => 1
    )
    @course2 = Course.create!(
      :call => 12406, 
      :title => "INTRODUCTION TO DATABASES",
      :number => "COMS W4111",
      :pts => 3,
      :description => "some intro for DB",
      :track => "Software System",
      :breadth => "B1",
      :required => 1,
      :elective => 1
    )
    @course3 = Course.create!(
      :call => 12547, 
      :title => "PROGRAMMING LANG & TRANSL",
      :number => "COMS W4115",
      :pts => 3,
      :description => "some intro for PLT",
      :track => "Software System",
      :breadth => "B1",
      :required => 1,
      :elective => 1
    )
    @course4 = Course.create!(
      :call => 12539, 
      :title => "OPERATING SYSTEMS I",
      :number => "COMS W4118",
      :pts => 3,
      :description => "some intro for OS",
      :track => "Software System",
      :breadth => "B1",
      :required => 1,
      :elective => 0
    )
    @course5 = Course.create!(
      :call => 12503, 
      :title => "ARTIFICIAL INTELLIGENCE",
      :number => "COMS W4701",
      :pts => 3,
      :description => "some intro for AI",
      :track => "Software System",
      :breadth => "B3",
      :required => 0,
      :elective => 0
    )
  end  

  after(:each) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean 
  end

  describe "GET home" do
    it "return all courses" do
        get :home
        expect(assigns[:courses]).to include(@course1)
        expect(assigns[:courses]).to include(@course2)
        expect(assigns[:courses]).to include(@course3)
        expect(assigns[:courses]).to include(@course4)
        expect(assigns[:courses]).to include(@course5)
    end
    
    it "should render template" do
        get :home
        expect(response).to render_template(:home)
    end
  end

  describe 'GET main' do
    it 'show the main page of WikiCourse' do
         get :main
         expect(response).to render_template(:main)
    end
    
  end

  describe 'select a track' do
    it 'redirect to the track\'s main page that contains all courses that belong to that track' do
     get :home
     expect(response).to render_template(:home)
     
    end

    it "selects Software System track" do
      get :main, :params => { :track => "Software System" }
      expect(assigns[:courses]).not_to include(@course1)
      expect(assigns[:courses]).to include(@course2)
      expect(assigns[:courses]).to include(@course3)
      expect(assigns[:courses]).to include(@course4)
      expect(assigns[:courses]).to include(@course5)
    end
  end

  describe 'select a breadth requirement' do
    it "selects breadth3" do
      get :main, :params => { :breadth3 => "B3" }
      expect(assigns[:courses]).not_to include(@course1)
      expect(assigns[:courses]).not_to include(@course2)
      expect(assigns[:courses]).not_to include(@course3)
      expect(assigns[:courses]).not_to include(@course4)
      expect(assigns[:courses]).to include(@course5)
    end
  end

  describe 'select a breadth requirement and a track' do
    it "selects breadth3 with Software System track" do
      get :main, :params => { :breadth3 => "B3", :track => "Software System"}
      expect(assigns[:courses]).not_to include(@course1)
      expect(assigns[:courses]).not_to include(@course2)
      expect(assigns[:courses]).not_to include(@course3)
      expect(assigns[:courses]).not_to include(@course4)
      expect(assigns[:courses]).to include(@course5)
    end
  end

  describe 'go to detail page of course 12406' do

    it "should render detail page template" do
      get :detail
      expect(response).to render_template(:detail)
    end


    it "gets the detail for course 12406" do
      get :detail, :params => { :call => 12406 }
      expect(assigns[:courses][0].call).to eq(12406)
      expect(assigns[:courses][0].title).to eq(@course1.title)
      expect(assigns[:courses][0].number).to eq(@course1.number)
      expect(assigns[:courses][0].pts).to eq(@course1.pts)
    end
  end







end