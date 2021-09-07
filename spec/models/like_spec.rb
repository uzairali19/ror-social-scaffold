require 'rails_helper'

RSpec.describe Like, type: :model do
  context 'Like for a post' do
    it 'Does not Validates if user_id is not unique' do
      u1 = create(:user)
      p1 = create(:post, user_id: u1.id)
      one = Like.create(user_id: u1.id, post_id: p1.id)
      two = Like.create(user_id: u1.id, post_id: p1.id)
      one.save
      -> { two.save! }.should raise_error
    end

    it 'Does not Validates if user_id is not unique' do
      u1 = create(:user)
      u2 = create(:user)
      p1 = create(:post, user_id: u1.id)
      one = Like.create(user_id: u1.id, post_id: p1.id)
      two = Like.create(user_id: u2.id, post_id: p1.id)
      one.save
      -> { two.save! }.should_not raise_error
    end
  end

  context 'belongs to User' do
    it 'Confirms' do
      belong_to :user
    end
  end

  context 'belongs to Post' do
    it 'Confirms' do
      belong_to :post
    end
  end
end
