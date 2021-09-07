require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'Confirms presence of comment' do
    it 'validates' do
      should validate_presence_of(:content)
    end
    it 'does not validates' do
      (:content).equal_to falsey if :content == false
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
