require 'rails_helper'

RSpec.describe "routes for posts" do

  it 'routes GET /posts to the posts controller' do
    post1 = FactoryGirl.create(:post)
    post2 = FactoryGirl.create(:post)
    post3 = FactoryGirl.create(:post)
    expect(get('/posts')).to route_to('posts#index')
  end

  it 'routes GET /posts/id to the posts controller' do
    post = FactoryGirl.create(:post)
    expect(get("/posts/#{post.id}")).to route_to('posts#show', id: post.id.to_s)
  end

  it 'routes POST /posts to the posts controller' do
    expect(post('/posts')).to route_to('posts#create')
  end

end
