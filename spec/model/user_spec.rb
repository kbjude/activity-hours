require 'rails_helper'

RSpec.describe 'User', type: :model do
    describe 'Creating a user' do
        it 'returns a newly created user' do
            user = User.create(name: 'Jude')
            expect(user).to eql(user)
        end
    end
end