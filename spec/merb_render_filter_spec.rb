require File.dirname(__FILE__) + '/spec_helper'

describe "merb_render_filter" do
  it "should render posts#index" do
    res = request(resource(:posts))
    res.should be_successful
    res.should have_tag("title[text()='Test - Posts']")
    File.exist?(Posts::TMPFILE).should be_false
  end
end
