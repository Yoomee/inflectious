module ActiveSupport
  module Inflector
    class Inflections
      attr_reader :gerunds

      def gerunds
        @gerunds ||= []
      end

    end
    
    def gerundize(word)
      result = word.to_s.dup
      if word.empty?
        result
      else
        inflections.gerunds.each { |(rule, replacement)| break if result.gsub!(rule, replacement) }
        result == word ? word + 'ing' : result
      end
    end

  end
end