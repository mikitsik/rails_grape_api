module API
  module V1
    class Projects < Grape::API
      helpers API::V1::ApiHelpers::AuthenticationHelper
      before { authenticate! }
      include API::V1::Defaults

      namespace :projects do
        desc "Create a new project"
        params do
          requires :name, type: String, desc: "Project name"
        end
        post do
          project = Project.create!(permitted_params)
          present project, with: API::V1::Entities::ProjectEntity
        end

        desc "Update a project"
        params do
          requires :id, type: Integer, desc: "Project ID"
          optional :name, type: String, desc: "Project name"
        end
        put ':id' do
          project = Project.find(permitted_params[:id]).update!(name: permitted_params[:name])
          present project, with: API::V1::Entities::ProjectEntity
        end

        desc "Delete a project"
        params do
          requires :id, type: Integer, desc: "Project ID"
        end
        delete ':id' do
          Project.find(permitted_params[:id]).destroy!
        end
      end
    end
  end
end
