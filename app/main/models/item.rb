class Item < Volt::Model
  belongs_to :list

  validate :name, presence: true

  field :name
  field :description
  field :completed

  def list=(list)
    self.list_id = list.id
  end
end
