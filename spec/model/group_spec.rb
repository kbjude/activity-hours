require 'rails_helper'

RSpec.describe 'Group', type: :model do
    describe 'Creating a group' do
        let(:group) { build(:group)}
        let(:user) { create(:user)}
        it 'returns a newly created group' do
            group.user_id = user.id
            expect(group.save).to eql(true)
        end
        it 'returns all the registered groups' do
            hour = Group.all
            expect(hour).to eql(hour)
        end
    end
end