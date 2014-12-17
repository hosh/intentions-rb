require 'rlet/concern'

module Intentions
  module Concerns
    module Register
      def _table
        @_table ||= {}
      end

      def [](identifier)
        _table[identifier]
      end

      def register(item)
        _table[item.identifier] = item
      end
    end
  end
end
