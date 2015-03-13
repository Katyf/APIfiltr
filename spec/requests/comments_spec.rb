require 'rails_helper'

describe 'Comments Requests' do
  before(:all) do
    Comment.destroy_all
    Post.destroy_all
    @posts = FactoryGirl.create_list(:post, 25)
    @comments = FactoryGirl.create_list(:comment, 25)
  end

  describe '#create' do
    it 'create a comment / post and return comment' do

      post "/posts/#{@posts.first.id}/comments",
      { comment: {
          body: "This is a comment body.",
          author: "Jason Bro"
        } }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
      expect(response).to be_success
      expect(response.content_type).to be Mime::JSON
    end
  end

#no show action
  describe '#show' do
    it 'get a comment by id / return json' do
      @post = @posts.first
      @comment = @comments.first
      get "/posts/#{@post.id}/comments/#{@comment.id}"
      expect(response).to be_success
      comment = JSON.parse(response.body)
      expect(comment['body']).to eq @comment.body
    end
  end

  #no index action

end
