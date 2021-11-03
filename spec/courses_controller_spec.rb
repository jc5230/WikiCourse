require 'rails_helper'

RSpec.describe CoursesController, type: :controller do

  describe 'select a track' do
     it 'redirect to the track\'s main page that contains all courses that belong to that track' do
      get :home
      expect(response).to render_template(:home)
      get :home, :params => { :track => "Software System" }
     end
  end
  describe 'go to the main page' do
    it 'go to the main page of WikiCourse' do
         get :main
         expect(response).to render_template(:main)
    end
  end
end