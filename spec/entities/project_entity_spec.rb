require 'rails_helper'

describe API::V1::Entities::ProjectEntity do
  describe 'fields' do
    let(:project) { create :project }
    let(:json) { API::V1::Entities::ProjectEntity.new(project).as_json }

    specify 'presents project id' do
      expect(json[:id]).to be_present
    end

    specify 'presents project name' do
      expect(json[:name]).to be_present
    end

    specify 'presents project timestamps' do
      expect(json[:created_at]).to be_present
      expect(json[:updated_at]).to be_present
    end
  end
end
