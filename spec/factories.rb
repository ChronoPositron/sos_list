FactoryGirl.define do

  # Generic Item
  factory :item do
    name "test"
    completed false
    list
  end

  # Generic List
  factory :list do
    name "Test List"

    # A list with a set id value
    factory :list_with_id do
      id 1
    end

    # A standard list with a configurable number of complete/incomplete items.
    factory :list_with_items do
      transient do
        items_count 5
      end

      transient do
        complete_items 2
      end

      transient do
        incomplete_items 3
      end

      after(:build) do |list, evaluator|
        # There's no concat, +, or push on ReactiveArray (the parent class of ArrayModel)
        # so we need to individually add the items.
        build_list(:item, evaluator.complete_items, list: list, completed: true).each { |i| list.items << i }
        build_list(:item, evaluator.incomplete_items, list: list, completed: false).each { |i| list.items << i }
      end

      after(:create) do |list, evaluator|
        create_list(:item, evaluator.complete_items, list: list, completed: true).each { |i| list.items << i }
        create_list(:item, evaluator.incomplete_items, list: list, completed: false).each { |i| list.items << i }
      end
    end
  end

end