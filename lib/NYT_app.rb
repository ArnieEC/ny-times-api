require_relative 'services/semantic'
require_relative 'services/generator'

# NYT api services
class NYTApp
  def semantic_service
    Semantic.new
  end

  def random
    StateGenerator.new
  end
end
