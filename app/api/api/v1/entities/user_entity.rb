module API
  module V1
    module Entities
      class UserEntity < Grape::Entity
        root 'users', 'user'

        expose :email
      end
    end
  end
end
