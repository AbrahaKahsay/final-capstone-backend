class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.string :brand
      t.string :model
      t.string :photo
      t.integer :power
      t.integer :weight
      t.integer :price

      t.timestamps
    end
  end
end
