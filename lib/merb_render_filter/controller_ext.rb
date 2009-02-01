class Merb::Controller
  class_inheritable_accessor :_before_render_filters
  class_inheritable_accessor :_after_render_filters
  self._before_render_filters = []
  self._after_render_filters = []
 
  def self.before_render(filter = nil, opts = {}, &block)
    add_filter(self._before_render_filters, filter || block, opts)
  end
 
  def self.after_render(filter = nil, opts = {}, &block)
    add_filter(self._after_render_filters, filter || block, opts)
  end
 
  def render_with_filter(*args, &block)
    _call_filters(_before_render_filters)
    render_without_filter(*args, &block)
  ensure
    _call_filters(_after_render_filters)
  end
  alias_method :render_without_filter, :render
  alias_method :render, :render_with_filter
end
