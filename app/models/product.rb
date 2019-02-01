class Product < ApplicationRecord
  scope :brand, -> (brand) { where brand: brand }
  scope :model_filter, -> (model) { where model: model }
  scope :random_access_memory, -> (random_access_memory) { where random_access_memory: random_access_memory }
  scope :external_storage, -> (external_storage) { where external_storage: external_storage }
end
