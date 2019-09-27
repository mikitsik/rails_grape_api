module API
  module V1
    module Entities
      class ProjectEntity < Grape::Entity
        format_with(:iso_timestamp) { |dt| dt.iso8601 }

        root 'projects', 'project'

        expose :id
        expose :name

        with_options(format_with: :iso_timestamp) do
          expose :created_at
          expose :updated_at
        end
      end
    end
  end
end
