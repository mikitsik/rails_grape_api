module API
  module V1
    class Base < Grape::API
      mount API::V1::Login
      mount API::V1::Projects
      mount API::V1::Tasks
    end
  end
end
