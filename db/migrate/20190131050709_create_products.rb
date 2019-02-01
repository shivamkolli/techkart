class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
    	t.string :name
      t.string :model
      t.string :brand
      t.string :year
      t.string :random_access_memory
      t.string :external_storage
      t.timestamps
    end
  end
end
