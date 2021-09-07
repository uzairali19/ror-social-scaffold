require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'Validates relationships for' do
    it 'User' do
      belong_to(:user)
    end
    it 'Comment' do
      have_many(:comments)
    end
    it 'Likes' do
      have_many(:likes)
    end
  end
end
