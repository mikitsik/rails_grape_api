module RailsGrapeApi
  module V1
    class Projects < Grape::API
      include API::V1::Defaults

      resource :projects do
        desc "Return all projects"
        get "", root: :projects do
          Project.all
        end

        desc "Return a project"
        params do
          requires :id, type: String, desc: "ID of the project"
        end
        get ":id", root: "project" do
          Project.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
