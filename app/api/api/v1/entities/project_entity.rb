module API
  module V1
    module Entities
      class ProjectEntity < Grape::Entity
        expose :name
      end
    end
  end
end
