require 'rails_helper'

RSpec.describe "routes for images" do
  it 'routes to #show' do
    expect(get('/')).to route_to ('images#show')
  end

end
