require 'rails_helper'

RSpec.describe User, type: :feature do
    context 'Login attemps' do
      it 'returns login form when no user is logged in' do
        visit new_session_path
        expect(page).to have_content('Login')
      end
    end
end