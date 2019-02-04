require_relative 'services/semantic'

# NYT api services
class NYTApp
  def semantic_service
    Semantic.new
  end
end
