class MembersController < ApplicationController
    before_action :authenticate_user!

    def show
        user = get_user_from_token
        render json: {
            message: "you are logged in"
            user: user

         }
        end
        private
        def get_user_from_token
            jwt_payload =JWT.decode(request.headers['Authorization'].split(' ')[1],
        Rils.application.credentials.devise[:jwt_secret_key]).first
        user_id = jwt_payload['sub']
        user = User.find(user_id.to_s)
        end
end