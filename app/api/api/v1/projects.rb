module API
  module V1
    class Projects < Grape::API
      include API::V1::Defaults

      namespace :projects do
        desc "Create a project"
        params do
          requires :name, type: String, desc: "Project name"
        end
        post do
          # authenticate!
          Project.create!(permitted_params)
        end

        desc "Update a project"
        params do
          requires :id, type: Integer, desc: "Project ID"
          requires :name, type: String, desc: "Project name"
        end
        put ':id' do
          # authenticate!
          Project.find(permitted_params[:id]).update(name: permitted_params[:name])
        end

        desc "Delete a project"
        params do
          requires :id, type: Integer, desc: "Project ID"
        end
        delete ':id' do
          # authenticate!
          Project.find(permitted_params[:id]).destroy!
        end
      end
    end
  end
end
