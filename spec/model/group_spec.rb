require 'rails_helper'

RSpec.describe 'Hour', type: :model do
    describe 'Creating a group' do
        it 'returns a newly created group' do
            user = User.create(name: 'Jude')
            group = Group.create(name: "Warriors", user_id: 1)
            expect(group).to eql(group)
        end
        it 'returns all the registered groups' do
            hour = Group.all
            expect(hour).to eql(hour)
        end
    end
end