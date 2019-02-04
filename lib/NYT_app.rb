require_relative 'services/semantics'

# NYT api services
class NYTApp
  def semantic_service
    Semantic.new
  end
end
