class Item < Volt::Model
  belongs_to :list

  validate :name, presence: true

  field :name
  field :description
  field :completed
end
