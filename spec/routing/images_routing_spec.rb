require 'rails_helper'

RSpec.describe "routes for images" do
  it 'routes to #show' do
    expect(get('/')).to route_to ('images#show', id: )
  end


end


 it "routes to #edit" do
      expect(:get => "/artists/1/edit").to route_to("artists#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/artists").to route_to("artists#create")
    end
