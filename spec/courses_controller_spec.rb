require 'rails_helper'

RSpec.describe CoursesController, type: :controller do
  describe 'select a track' do
    it 'redirect to the track\'s main page that contains all courses that belong to that track' do
      get :home, {:track=> 'Software System'}
        expect(response).to redirect_to courses_main_path
    end

  end
end