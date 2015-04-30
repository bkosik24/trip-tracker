require 'rails_helper'

RSpec.describe "trips/index", type: :view do
  before(:each) do
    assign(:trips, [
      Trip.create!(
        :name => "Name",
        :description => "MyText"
      ),
      Trip.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of trips" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
