require 'rails_helper'

describe API::V1::Entities::TaskEntity do
  describe 'fields' do
    let(:task) { create :task }
    let(:json) { API::V1::Entities::TaskEntity.new(task).as_json }

    specify 'presents task id' do
      expect(json[:id]).to be_present
    end

    specify 'presents task name' do
      expect(json[:name]).to be_present
    end

    specify 'presents task status' do
      expect(json[:status]).to be_present
    end

    specify 'presents task deadline' do
      expect(json[:deadline]).to be_present
    end

    specify 'presents task timestamps' do
      expect(json[:created_at]).to be_present
      expect(json[:updated_at]).to be_present
    end
  end
end
