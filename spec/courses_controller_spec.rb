require 'rails_helper'

RSpec.describe CoursesController, type: :controller do

  describe 'select a track' do
     it 'redirect to the track\'s main page that contains all courses that belong to that track' do
      get :home
      expect(response).to render_template(:home)
      get :home, :params => { :track => "Software System" }
     end
  end
  describe 'select a track2' do
    it 'redirect to the track\'s main page that contains all courses that belong to that track2' do
         #expect(Track).to receive(:track).with('Software System')
         #get :main, {:track=>'Software System'}
         get :main #subject { , :params => { :track => "Software System" } }
         expect(response).to render_template(:main)
         end
  end
end