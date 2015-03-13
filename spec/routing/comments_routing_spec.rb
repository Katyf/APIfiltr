require 'rails_helper'


RSpec.describe "routes for commenets" do
    before(:all) do
    Comment.destroy_all
    Post.destroy_all
    FactoryGirl.create_list(:post, 2)
    FactoryGirl.create_list(:comment, 2)
  end

  # it 'routes POST /posts/id/comments to the posts-comments controller' do
  #   @post = Post.first
  #   @comment = Comment.first
  #   byebug
  #   expect(post("/posts/#{@post.id}/comments")).to route_to('comments#create')
  # end

  it 'routes GET /posts/id to the posts controller' do
  post = FactoryGirl.create(:post)
  expect(get("/posts/#{post.id}")).to route_to('posts#show', id: post.id.to_s)
  end
end



#post_comments POST /posts/:post_id/comments(.:format)          comments#create
