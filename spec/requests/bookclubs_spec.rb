require 'rails_helper'

RSpec.describe "Bookclubs", type: :request do
  describe "GET /bookclubs" do
    it "works! (now write some real specs)" do
      get bookclubs_path
      expect(response).to have_http_status(200)
    end
  end
end
