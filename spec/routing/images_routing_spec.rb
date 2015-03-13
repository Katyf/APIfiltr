require 'rails_helper'

RSpec.describe "routes for images" do
  it 'routes to #show controller' do
    expect(get("/posts/1/images/2")).to route_to({
      controller: 'images',
      action: 'show',
      post_id: '1',
      id: '2'
      })
  end
end

