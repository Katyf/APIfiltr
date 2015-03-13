require 'rails_helper'
require 'spec_helper'

describe 'Images API' do

  before(:all) do
    Post.delete_all
    Image.delete_all
    @post = FactoryGirl.create(:post)
    @images = FactoryGirl.create_list(:image, 10)
    @images.map {|image| @post.images << image}
  end
  describe '#create' do
    it 'should add the image to a post' do
      post "/posts/#{@post.id}/images",
        {image:
         { url: 'https://s3.amazonaws.com/dubya-blog-bucket/uploads/eb00f33c-b80e-4e72-ada4-36bdc24f551b',
           post_id: @post.id
           }
         }.to_json
      {'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s, 'HTTP_AUTHORIZATION' => '9cbaf8c82925426c869ecfc4b610c8a6' }
      expect(response).to be_success
      expect(response.content_type).to be Mime::JSON
    end
  end
  describe '#show' do
    it ' shows the image on a post' do
      get "/posts/#{@posts.id}/images"
      expect(response).to be_success
    end
  end
end

