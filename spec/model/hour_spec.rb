require 'rails_helper'

RSpec.describe Hour, type: :model do
    describe 'Creating an hour' do
        let(:hour) { build(:hour)}
        let(:user) { create(:user)}
        it 'returns a newly created user hour' do
            hour.user_id = user.id
            expect(hour.save).to eql(true)
        end

    end
end