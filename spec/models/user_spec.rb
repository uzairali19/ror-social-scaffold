require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validates database relationship' do
    it 'Has many posts' do
      have_many :posts
    end
    it 'Has many likes' do
      have_many :likes
    end
    it 'Has many friendships' do
      have_many :friendships
    end
    it 'Has many friendships' do
      have_many :comments
    end
  end
  context 'Validates presence of' do
    it 'name' do
      should validate_presence_of(:name)
    end
  end
end
