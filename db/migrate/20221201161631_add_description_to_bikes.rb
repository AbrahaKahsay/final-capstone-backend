class AddDescriptionToBikes < ActiveRecord::Migration[7.0]
  def change
    add_column :bikes, :description, :text
  end
end
