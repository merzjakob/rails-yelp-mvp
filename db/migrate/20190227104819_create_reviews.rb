class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating, default: 0, null: false
      t.references :restaurant, foreign_key: true, index: true

      t.timestamps
    end
  end
end
