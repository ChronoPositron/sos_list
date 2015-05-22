class List < Volt::Model
  own_by_user
  has_many :items

  field :name
  field :shareable

  # Only the owner can delete the list
  permissions(:delete) do
    deny unless owner?
  end

  # Only the owner should be able to make the list shareable
  permissions(:create, :update) do
    deny :shareable unless owner?
  end
end