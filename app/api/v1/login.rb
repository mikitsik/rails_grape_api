module RailsGrapeApi
  module V1
    class Login < Grape::API
      include API::V1::Defaults

      desc 'End-points for the Login'
      namespace :login do
        desc 'Login via email and password'
        params do
          requires :email, type: String, desc: 'email'
          requires :password, type: String, desc: 'password'
        end
        post do
          user = User.find_by_email params[:email]
          if user.present? && user.valid_password?(params[:password])
            token = user.authentication_tokens.valid.first ||
            AuthenticationToken.generate(user)
            status 200
          else
            error_msg = 'Bad Authentication Parameters'
            error!({ 'error_msg': error_msg }, 401)
          end
        end
      end
    end
  end
end
