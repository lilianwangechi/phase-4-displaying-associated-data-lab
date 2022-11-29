class UsersController < ApplicationController
  def show
    users= User.find_by(id: params[:id])
    render json: users, include: :items
  end
end

# def show
#   users = User.find_by(id:params[:id])

#   if users
#       render json: users, status: :ok
#   else
#       render json: {error: "user not found"}, status: :not_found
# end
# end
# end