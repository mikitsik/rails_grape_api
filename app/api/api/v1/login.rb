module API
  module V1
    class Login < Grape::API
      include API::V1::Defaults

      namespace :login do
        desc 'Login via email and password'
        params do
          requires :email, type: String, desc: "User email"
          requires :password, type: String, desc: "User password"
        end

        post do
          user = User.find_by_email permitted_params[:email]
          if user.present? && user.valid_password?(permitted_params[:password])
            token = user.authentication_tokens.valid.first ||
            AuthenticationToken.create(user: user, token: AuthenticationToken.generate_unique_secure_token )
            status 200
            present token.user, with: Entities::UserWithTokenEntity
          else
            error_msg = 'Bad Authentication Parameters'
            error!({ 'error_msg': error_msg }, 401)
          end
        end
      end
    end
  end
end
