class CreateCakes < ActiveRecord::Migration[6.1]
  def change
    create_table :cakes do |t|
      t.string :name
      t.string :description
      t.string :image
      t.boolean :available
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
