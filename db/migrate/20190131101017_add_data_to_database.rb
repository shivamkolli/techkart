class AddDataToDatabase < ActiveRecord::Migration[5.2]
  def change
  	5000.times do  
	  product = Product.new
	  product.name = Faker::Device.platform
	  product.model = Faker::Device.model_name
	  product.brand = Faker::Device.manufacturer
	  product.year = Faker::Vehicle.year
	  product.random_access_memory = Faker::Device.version
	  product.external_storage = Faker::Device.build_number
	  product.save
	end
  end
end
