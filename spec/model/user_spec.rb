require 'rails_helper'

RSpec.describe User, type: :model do
    describe 'Creating a user' do
        let(:user) { build(:user)}
        it 'returns a newly created user' do
            expect(user.save).to eql(true)
        end
        it 'returns a verified user at login' do
            user = User.create(name: '')
            expect(user.valid?).to eql(false)
        end
    end
end