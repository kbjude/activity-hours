require 'rails_helper'

RSpec.describe 'Hour', type: :model do
    describe 'Creating a hour' do
        it 'returns a newly created user hour' do
            user = User.create(name: 'Jude')
            hour = Hour.create(hours: 2, description: "Praying", user_id: 1)
            expect(Hour.first.description).to eql("Praying")
        end
        it 'returns all the registered hours' do
            hour = Hour.all
            expect(hour).to eql(hour)
        end
    end
end