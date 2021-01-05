require 'test_helper'

class PostsCreateTest < ActionDispatch::IntegrationTest
  
  test "invalid post_create information" do
    get new_path
    assert_no_difference 'Post.count' do
      post posts_path, params: { post: { title: "",
                                         start: "",
                                         finish: "",
                                         all_day: "",
                                         memo: ""   }}
    end
    assert_template 'posts/new'
  end
  
  test "valid post_create information" do
    get new_path
    assert_difference 'Post.count' do
      post posts_path, params: { post: { title: "test",
                                         start: "2020-10-10",
                                         finish: "2020-11-11",
                                         all_day: "true",
                                         memo: "memo"  }}
    end
    follow_redirect!
    assert_template '/'
    assert_not flash.empty?
  end
  
end
