require 'rails_helper'

RSpec.describe User, type: :model do
  it 'returns the username for a user' do
    user = User.create(username: 'testUser123')

    expect(user.username).to eq 'testUser123'
  end
end
