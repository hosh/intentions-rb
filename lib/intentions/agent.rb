module Intentions
  class Agent
    attr_reader :name, :trusts

    def initialize(name)
      @name   = name
      @trusts = {}
    end

    class << self
      @_table = {}

      def [](identifier)
        @_table[identifier]
      end

      def register(agent)
        @_table[agent.name] = agent
      end

      alias []= register
    end
  end
end
