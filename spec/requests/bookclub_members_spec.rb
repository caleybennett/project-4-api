require 'rails_helper'

RSpec.describe "BookclubMembers", type: :request do
  describe "GET /bookclub_members" do
    it "works! (now write some real specs)" do
      get bookclub_members_path
      expect(response).to have_http_status(200)
    end
  end
end
