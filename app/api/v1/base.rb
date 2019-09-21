module RailsGrapeApi
  module V1
    class Base < Grape::API
      mount RailsGrapeApi::V1::Login
      mount RailsGrapeApi::V1::Projects
      mount RailsGrapeApi::V1::Tasks
    end
  end
end
