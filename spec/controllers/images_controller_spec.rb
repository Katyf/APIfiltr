require 'pry-byebug'
require 'rails_helper'

RSpec.describe ImagesController do
  before(:each) do
    Image.destroy_all
    Post.destroy_all
    @posts = FactoryGirl.create_list(:post, 25)
    @image = FactoryGirl.create(:image)
  end

  describe'GET show' do
    it'has a 200 status code' do
      @post = Post.first
      get :show, :id => @image.id, :post_id => @post.id
      expect(response).to be_success
    end
    it 'renders the show template' do
      @post = Post.first
      # params = {post_id: post_id}
      get :show, :id => @image.id, :post_id => @post.id
      expect(response).to render_template("show")
    end
  end

  describe 'POST create' do
    it 'should create an image on that post' do
      expect{
        post :create, image: @image
        }.to change(Image, :count).by 1
    end
  end
end

