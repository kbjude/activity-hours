# require 'rails_helper'

# RSpec.describe User, type: :feature do
#     context 'Login attemps' do
#       it 'returns login form when no user is logged in' do
#         visit new_user_session_path
#         expect(page).to have_content('Sign in')
#       end
#       it 'User is redirected to the index page' do
#         visit 'users/new'
#         fill_in 'user_email', with: 'user.email'
#         fill_in 'user_password', with: 'user.jude'
#         click_button 'Log in'
#         expect(page).to have_content('Stay in touch')
#       end
#     end
#   end