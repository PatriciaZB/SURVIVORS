class AddAltimageToActivity < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :Altimage, :string
  end
end
