ActiveSupport::Inflector.inflections do |inflect|
  inflect.gerund /ing$/i, '\0'
  inflect.gerund /([^aeiou]|[aeiou]{2})[^aeiou]$/i, '\0ing'
  inflect.gerund /(\w*[^aeiou])e$/i, '\1ing'
  inflect.gerund /[aeiou]([^aeiou])$/i, '\0\1ing'
end