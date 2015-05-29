module Main
  class ListController < Volt::ModelController
    def new
      self.model = attrs.lists.buffer
    end

    def show
      self.model = store._lists.where(id: params.id).fetch_first
    end

    def save
      model.save!.then do
        flash._notices << "List Added"
        new
      end.fail do |err|
        flash._notices << err.to_s
      end
    end

    private

    def complete
      model.items.count {|t| t._completed }
    end

    def incomplete
      model.items.size - complete
    end

    def complete_all
      model.items.each{|t| t._completed = true }
    end

    def remove_completed
      model.items.select{|t| t._completed }.each(&:destroy)
    end

    def current_index
      (params._index || 0).to_i
    end

    def current_item
      model.items[current_index]
    end

    def percent_complete
      ((complete / model.items.size.to_f) * 100).round
    end
  end
end
