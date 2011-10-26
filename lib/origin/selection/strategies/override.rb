# encoding: utf-8
module Origin
  module Selection
    module Strategies
      module Override

        def override
          tap { |query| query.strategy = :override! }
        end

        private

        def override!(criterion, operator)
          assimilate(criterion) do |selector, field, value|
            selector.override!(field, operator, value)
          end
        end
      end
    end
  end
end