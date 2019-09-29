class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :strain
      t.text :description
      t.string :THC
      t.string :CBD
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
