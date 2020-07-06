class AddAuthorToHour < ActiveRecord::Migration[5.2]
  def change
    add_reference :hours, :user, foreign_key: true
  end
end
