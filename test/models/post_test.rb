require 'test_helper'

class PostTest < ActiveSupport::TestCase
  
 def setup
   @post = Post.new(title: "Example", start: 2015-10-20 , finish: 2015-10-21 ,all_day: true , memo: "Memo test")
 end
 
 test "should be valid" do
   assert @post.valid?
 end
 
 test "title should be present" do
   @post.title = " "
   assert_not @post.valid?
 end
 
 test "start should be present" do
   @post.start = nil
   assert_not @post.valid?
 end
 
 test "finish should be present" do
   @post.finish = nil
   assert_not @post.valid?
 end
 
 test "title should not be too long" do
   @post.title = "a" * 21
   assert_not @post.valid?
 end
 
 
end
