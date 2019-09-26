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
            params do
              requires :name, type: String, desc: 'Task name'
              requires :status, type: Boolean, desc: 'Task status'
              requires :deadline, type: Datetime, desc: 'Task deadline'
            end

            desc "Add new task"
            post do
              Task.create!(permitted_params)
            end

            desc "Update a task"
            params do
              requires :id, type: Integer, desc: "Task ID"
              requires :name, type: String, desc: "Task name"
              requires :status, type: Boolean, desc: 'Task status'
              requires :deadline, type: Datetime, desc: 'Task deadline'
            end
            put ':id' do
              # authenticate!
              Task.find(permitted_params[:id]).update(
                name: permitted_params[:name],

              )
            end

            desc "Delete a task"
            params do
              requires :id, type: Integer, desc: "Task ID"
            end
            delete ':id' do
              # authenticate!
              Task.find(permitted_params[:id]).destroy!
            end
          end
        end
      end
    end
  end
end
