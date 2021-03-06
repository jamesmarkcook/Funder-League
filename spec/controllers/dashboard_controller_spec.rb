require 'spec_helper'

describe DashboardController do

  describe "GET '#index'" do
    it 'redirects to a login page if there is no player signed in' do
      get :index
      expect(response).to redirect_to new_player_session_path
    end

    it 'renders the players dashboard if player is signed in' do
      sign_in create(:player)
      get :index
      expect(response).to render_template :index
    end
  end
end
