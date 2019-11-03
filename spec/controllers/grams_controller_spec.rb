require 'rails_helper'

RSpec.describe GramsController, type: :controller do
  describe "grams#index action" do
    it "should succesfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "grams#new action" do
    it "should succesfully show the form" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
end
