class AddImageToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :image, :string
  end
end
