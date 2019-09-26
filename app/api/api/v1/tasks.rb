module API
  module V1
    class Tasks < Grape::API
      include API::V1::Defaults

      namespace :projects do
        params do
          requires :project_id, type: Integer, desc: 'Project ID'
        end
        namespace ':project_id' do
          namespace :tasks do

            desc "Add new task"
            params do
              requires :name, type: String, desc: 'Task name'
              requires :status, type: Boolean, desc: 'Task status'
              requires :deadline, type: DateTime, desc: 'Task deadline'
            end
            post do
              task = Task.create!(permitted_params)
              present task, with: API::V1::Entities::TaskEntity
            end

            desc "Update a task"
            params do
              requires :id, type: Integer, desc: "Task ID"
              optional :name, type: String, desc: "Task name"
              optional :status, type: Boolean, desc: 'Task status'
              optional :deadline, type: DateTime, desc: 'Task deadline'
            end
            put ':id' do
              # authenticate!
              task = Task.find(permitted_params[:id]).update!(
                name: permitted_params[:name],
                status: permitted_params[:status],
                deadline: permitted_params[:deadline]
              )
              present task, with: API::V1::Entities::TaskEntity
            end

            desc "Delete a task"
            params do
              requires :id, type: Integer, desc: "Task ID"
            end
            delete ':id' do
              # authenticate!
              task = Task.find(permitted_params[:id]).destroy!
              present task, with: API::V1::Entities::TaskEntity
            end
          end
        end
      end
    end
  end
end
