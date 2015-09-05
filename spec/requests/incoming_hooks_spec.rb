require 'rails_helper'

RSpec.describe "IncomingHooks", type: :request do
  describe "GET /incoming_hooks" do
    it "works! (now write some real specs)" do
      get incoming_hooks_path
      expect(response).to have_http_status(200)
    end
  end
end
