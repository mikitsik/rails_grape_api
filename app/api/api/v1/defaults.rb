module API
  module V1
    module Defaults
      extend ActiveSupport::Concern

      included do
        prefix "api"
        version "v1", using: :path
        default_format :json
        format :json

        helpers do
          def permitted_params
            @permitted_params ||= declared(params,
               include_missing: false)
          end

          def logger
            Rails.logger
          end
        end

        rescue_from ActiveRecord::RecordNotFound do |e|
          error_response(message: e.message, status: 404)
        end

        rescue_from ActiveRecord::RecordInvalid do |e|
          error_response(message: e.message, status: 422)
        end

        rescue_from ActiveRecord::RecordNotSaved do |e|
          error_response(message: e.message, status: 500)
        end

        rescue_from ActiveRecord::RecordNotDestroyed do |e|
          error_response(message: e.message, status: 500)
        end

        rescue_from Grape::Exceptions::ValidationErrors do |e|
          rack_response({
            status: e.status,
            error_msg: e.message,
          }.to_json, 400)
        end
      end
    end
  end
end
