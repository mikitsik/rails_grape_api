require 'byebug'

module API
  module V1
    module ApiHelpers
      module AuthenticationHelper
        TOKEN_PARAM_NAME = :token

        def token_value_from_request(token_param = TOKEN_PARAM_NAME)
          params[token_param]
        end

        def current_user
          token = AuthenticationToken.find_by_token(token_value_from_request)
          return nil unless token.present?
          @current_user ||= token.user
        end

        def signed_in?
          !!current_user
        end

        def authenticate!
          unless signed_in?
            error_msg = 'unauthenticated user error'
            error!({ 'error_msg': error_msg }, 401)
          end
        end
      end
    end
  end
end
