require 'rails_helper'

describe 'Post Requests' do
  before(:all) do
    Post.destroy_all
    FactoryGirl.create_list(:post, 10)
  end

describe '#index' do
    it 'gets all of the posts' do
      get '/posts'
      expect(response).to be_success
      expect(Post.count).to eq 10
      json = JSON.parse(response.body)
      expect(json.length).to eq 10
    end
  end

  describe '#show' do
    it 'gets one post' do
      post = FactoryGirl.create(:post)
      get "/posts/#{post.id}"
      expect(response).to be_success
    end
  end

end
