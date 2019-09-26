module API
  module V1
    module Entities
      class TaskEntity < ProjectEntity
        root 'tasks', 'task'

        expose :id
        expose :name
        expose :status
        expose :deadline, format_with: :utc
        expose :created_at, format_with: :utc
        expose :updated_at, format_with: :utc
      end
    end
  end
end
