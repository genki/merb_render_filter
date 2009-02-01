class Application < Merb::Controller
  before :set_title

private
  def set_title
    @title = "Test"
  end
end
