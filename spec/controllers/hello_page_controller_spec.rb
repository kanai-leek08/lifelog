require "rails_helper"

RSpec.describe HelloPageController, type: :controller do
  render_views
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HelloPageController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #hello" do
    it "returns a success response" do
      Log.create(body: "first log")
      Log.create(body: "second log")
      get :hello, params: {}, session: valid_session
      expect(response).to be_success
      expect(response.body).to include("first log")
      expect(response.body).to include("second log")
      expect(response.content_type).to eq("text/html")
    end
  end

  describe "POST #create" do
    it "returns a success response" do
      post :create, params: {body: 'first log'}, session: valid_session
      expect(Log.last[:body]).to eq 'first log'
      expect(response.content_type).to eq("text/html")
    end
  end

end