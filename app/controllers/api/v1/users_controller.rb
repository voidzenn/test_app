class Api::V1::UsersController < Api::V1::BaseController
  api :GET, "/api/v1/users", "Get users list"
  returns code: 200, desc: "Ok"

  def index
    users = User.all

    render json: Api::V1::UserSerializer.new(users).serializable_hash, status: :ok
  end
end
