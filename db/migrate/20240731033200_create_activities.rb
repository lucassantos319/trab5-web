class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :description
      t.integer :distance
      t.integer :time_activity
      t.integer :user_id
      t.timestamps
    end
  end
end
