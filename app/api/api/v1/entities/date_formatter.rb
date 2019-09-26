module API
  module V1
    module Entities
      module DateFormatter
        extend Grape::API::Helpers

        Grape::Entity.format_with :utc do |date|
          date.utc if date
        end
      end
    end
  end
end
