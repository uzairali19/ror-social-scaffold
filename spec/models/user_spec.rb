require 'rails_helper'

RSpec.describe User, type: :model do
  it 'creates a user' do
    user = create(:user)
    puts user.name
  end
end
