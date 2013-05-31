require 'spec_helper'

describe User do

  describe '.deactivated' do
    let!(:user) { Fabricate(:user, locked_at: Time.now) }

    it do
      expect(User.deactivated).to include(user)
    end
  end
end
