module API
  module V1
    module Entities
      class ProjectEntity < Grape::Entity
        format_with(:utc) do |date|
          date.utc
        end

        root 'projects', 'project'

        expose :id
        expose :name
        
        with_options(format_with: :utc) do
          expose :created_at
          expose :updated_at
        end
      end
    end
  end
end
