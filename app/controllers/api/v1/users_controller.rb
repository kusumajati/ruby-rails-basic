class Api::V1::UsersController < Api::BaseController

    def index
        user = User.all
        success = user.present?
        res(success, success ? user : 'no user found', success ? 200 : 422)

    end

    def register
        user = User.create(user_params)
        success = user.save!
        res(success, success ? user : 'fail to create user', success ? 201 : 400)    

    end
    

    private 
    def user_params
        params.permit(:email, :password, :image)
    end
end
