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
  end

  describe 'POST create' do
    it 'should create an image on that post' do
      post
    end
  end

end
