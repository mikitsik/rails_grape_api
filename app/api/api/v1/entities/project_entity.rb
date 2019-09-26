module API
  module V1
    module Entities
      class ProjectEntity < Grape::Entity
        root 'projects', 'project'

        expose :id
        expose :name
        expose :created_at, format_with: :utc
        expose :updated_at, format_with: :utc
      end
    end
  end
end
