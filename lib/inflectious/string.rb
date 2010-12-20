class String
  def inflections
    inflections_with_names.collect(&:first)
  end

  def inflections_with_names
    returning out = [] do
      out << [singularize, "singularize"]
      out << [pluralize, "pluralize"]
      out << [participlize, "participlize"]
      out << [gerundize, "gerundize"]
      out << [gerundize.pluralize, "gerundize plural"]
      out << [doerize, "doerize"]
      out << [doerize.pluralize, "doerize plural"]
      out << [adjectivize, "adjectivize"]
      out << [superlativize, "superlativize"]
      out << [superlativize(:adjective => true), "superlativize adjective"]
    end
  end

  def adjectivize
    ActiveSupport::Inflector.adjectivize(self)
  end

  def doerize
    ActiveSupport::Inflector.doerize(self)
  end

  def gerundize
    ActiveSupport::Inflector.gerundize(self)
  end

  def participlize
    ActiveSupport::Inflector.participlize(self)
  end

  def superlativize(options={})
    ActiveSupport::Inflector.superlativize(self, options)
  end

  def stem
    ActiveSupport::Inflector.stem(self)
  end
end