require "rails_helper"

RSpec.describe UsersController, type: :request do
  it "returns data" do
    get "/users", params: {}

    p response
  end
end
