require 'rails_helper'

describe API::V1::Entities::UserWithTokenEntity do
  describe 'fields' do
    let(:token) { create :authentication_token }
    let(:json) { API::V1::Entities::UserWithTokenEntity.new(token.user).as_json }

    specify 'presents user email' do
      byebug
      expect(json[:email]).to be_present
    end

    specify 'presents the first available token' do
      expect(json[:token]).to be_present
    end
  end
end
