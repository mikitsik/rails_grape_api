module RailsGrapeApi
  class API < Grape::API
    mount RailsGrapeApi::V1::Base
  end
end
