module API
  module V1
    module Entities
      class TaskEntity < Grape::Entity
        expose :name
      end
    end
  end
end
