class CreateHours < ActiveRecord::Migration[5.2]
  def change
    create_table :hours do |t|
      t.integer :hours
      t.text :description

      t.timestamps
    end
  end
end
