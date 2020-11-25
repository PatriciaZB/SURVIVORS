class AddPresenceToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :presence, :string
  end
end
