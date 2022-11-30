class UsersController < ApplicationController
    
    # def show 
    #     user = User.find_by(id: params[:user_id])
    #     if user
    #         render json: user
    #     else
    #         render json: {error: "Not aurhorized"}, status: :unauthorized
    #     end
    # end

    def show
        user = User.find_by(id: session[:user_id])
        render json: user
    end

end
