class AddTitleToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :title, :text
  end
end
