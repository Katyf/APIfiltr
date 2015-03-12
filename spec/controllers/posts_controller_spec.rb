require 'rails_helper'
RSpec.describe PostsController do

  describe 'GET index' do

    it 'has a 200 status code' do
      get :index
      expect(response.status).to eq 200
    end

    it 'assigns @posts' do
      posts = Post.all
      get :index
      expect(assigns(:posts)).to eq posts
    end

  end

  describe 'GET one post' do

    it 'has a 200 status code' do
      post = FactoryGirl.create(:post)
      get :show, id: post
      expect(response.status).to eq 200
    end
    it 'has a 200 status code' do
      post = FactoryGirl.create(:post)
      get :show, id: post
      expect(assigns(:post)).to eq post
    end

  end

  # describe 'POST one post' do

  #   it 'saves a new post' do
  #     post = Post.create!(message: 'Which picture is better?')
  #     expect do
  #       post :create, post: post
  #     end
  #   end

  # end


end
