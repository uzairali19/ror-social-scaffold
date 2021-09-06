require 'rails_helper'

RSpec.describe Friendship, type: :model do
  context 'belongs to User' do
    it 'Confirms' do
      belong_to :user
    end
  end
end
