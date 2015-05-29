require 'spec_helper'

describe List do
  describe '#initialize' do
    context 'when no name' do
      it 'has an error' do
        list = List.new.buffer
        expect(list.marked_errors.keys).not_to include(:name)

        list.save!
        expect(list.marked_errors.keys).to include(:name)
      end
    end

    context 'when valid name' do
      it 'sets the name' do
        list = build(:list).buffer
        expect(list.name).to eq("Test List")
      end

      it 'has no errors' do
        list = build(:list).buffer

        list.save!
        expect(list.marked_errors.keys).not_to include(:name)
      end
    end
  end

  describe '#complete' do
    context 'when there are no items' do
      it 'shows none are complete' do
        list = build(:list).buffer
        expect(list.complete).to eq(0)
      end
    end

    context 'when there are items' do
      it 'counts only those that are completed' do
        list = build(:list_with_items, complete_items: 3, incomplete_items: 2).buffer
        expect(list.complete).to eq(3)
      end
    end
  end

  describe '#incomplete' do
    context 'when there are no items' do
      it 'shows none are incomplete' do
        list = build(:list).buffer
        expect(list.incomplete).to eq(0)
      end
    end

    context 'when there are items' do
      it 'counts only those that are incomplete' do
        list = build(:list_with_items, complete_items: 3, incomplete_items: 2).buffer
        expect(list.incomplete).to eq(2)
      end
    end
  end
end