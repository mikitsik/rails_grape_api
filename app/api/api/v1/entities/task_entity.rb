module API
  module V1
    module Entities
      class TaskEntity < Grape::Entity
        format_with(:utc) do |date|
          date.utc
        end

        root 'tasks', 'task'

        expose :id
        expose :name
        expose :status
        expose :project_id

        with_options(format_with: :utc) do
          expose :deadline
          expose :created_at
          expose :updated_at
        end
      end
    end
  end
end
