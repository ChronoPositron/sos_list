require 'spec_helper'

describe Item do
  describe '#initialize' do
    context 'when no name' do
      it 'has an error' do
        item = Item.new.buffer
        expect(item.marked_errors.keys).not_to include(:name)

        item.save!
        expect(item.marked_errors.keys).to include(:name)
      end
    end

    context 'when valid name' do
      it 'sets the name' do
        item = build(:item).buffer
        expect(item.name).to eq("test")
      end

      it 'has no errors' do
        item = build(:item).buffer

        item.save!
        expect(item.marked_errors.keys).not_to include(:name)
      end
    end
  end

  describe '#item=' do
    it 'sets a parent list' do
      list = build(:list_with_id)
      item = build(:item)

      item.list = list
      expect(item.list_id).to eq(1)
    end
  end
end