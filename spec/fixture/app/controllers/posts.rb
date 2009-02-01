class Posts < Application
  TMPFILE = Merb.root / "testfile"
  before_render :append_suffix_to_title
  before_render :open_file
  after_render :close_file

  def index
    render
  end

private
  def append_suffix_to_title
    @title += " - Posts"
  end

  def open_file
    @file = open(TMPFILE, "w")
  end

  def close_file
    @file.close
    File.unlink TMPFILE
  end
end
