class AddBusinessToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :business, :boolean
  end
end
