require 'rails_helper'


RSpec.describe "routes for commenets" do
  it 'routes POST /posts/:post_id/comments to the posts-comments controller' do
    expect(post("/posts/1/comments")).to route_to({
      controller: 'comments',
      action: 'create',
      post_id: '1'
    })
  end

  it 'routes GET /posts/:post_id/comments/:id to the comments controller' do
    expect(get("/posts/1/comments/2")).to route_to({
      controller: 'comments',
      action: 'show',
      post_id: '1',
      id: '2'
    })
  end
end





# post_comment GET  /posts/:post_id/comments/:id(.:format)      comments#show
