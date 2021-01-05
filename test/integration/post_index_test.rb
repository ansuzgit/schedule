require 'test_helper'

class PostIndexTest < ActionDispatch::IntegrationTest
  
  def setup
    @post = posts(:fortest1)
  end
  
  test "index delete links" do
    get root_path
    assert_template 'posts/index'
    assert_difference 'Post.count', -1 do
      delete post_path(@post)
    end
  end
  
end
