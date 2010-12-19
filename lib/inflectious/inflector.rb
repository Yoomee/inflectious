module ActiveSupport
  module Inflector
    class Inflections
      attr_reader :gerunds

      def stems
        @stems ||= []
      end

      def stem(rule, replacement)
        @uncountables.delete(rule) if rule.is_a?(String)
        @uncountables.delete(replacement)
        stems.insert(0, [rule, replacement])
      end

    end

    def adjectivize(word)
      word.match(/y$/) ? word : stem(word) + 'y'
    end

    def doerize(word)
      stem(word) + 'er'
    end

    def gerundize(word)
      stem(word) + 'ing'
    end

    def participlize(word)
      stem(word) + 'ed'
    end

    def superlativize(word, options = {})
      if options[:adjective]
        stem(word) + 'est'
      else
        word.gsub(/y$/, "i") + 'est'
      end
    end

    def stem(word)
      result = word.to_s.dup
      if word.empty?
        result
      else
        inflections.stems.each { |(rule, replacement)| break if result.gsub!(rule, replacement) }
        result
      end
    end
  end
end