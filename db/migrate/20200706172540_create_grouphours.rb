class CreateGrouphours < ActiveRecord::Migration[5.2]
  def change
    create_table :grouphours do |t|
      t.references :hour, foreign_key: true
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
