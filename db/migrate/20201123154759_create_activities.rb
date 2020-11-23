class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.string :address
      t.datetime :start_at
      t.datetime :end_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
