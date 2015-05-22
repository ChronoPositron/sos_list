module Main
  class ItemController < Volt::ModelController
    def new
      self.model = attrs.list._items.buffer
    end

    def save
      model.save!.then do
        flash._notices << "Item Added"
        new
      end.fail do |err|
        flash._notices << err.to_s
      end
    end

    def current_index
      (params._index || 0).to_i
    end
  end
end
