ActiveSupport::Inflector.inflections do |inflect|
  inflect.stem(/(.*[^aeiou])e$/i, '\1')
  inflect.stem(/[aeiou]([^aeiou])$/i, '\0\1')
  inflect.stem(/[aeiou]{2}[^aeiou]$/i, '\0')
end