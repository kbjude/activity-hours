class AddUserToGroup < ActiveRecord::Migration[5.2]
  def change
    add_reference :groups, :user, foreign_key: true
  end
end
