require 'rails_helper'

RSpec.describe "trips/new", type: :view do
  before(:each) do
    assign(:trip, Trip.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new trip form" do
    render

    assert_select "form[action=?][method=?]", trips_path, "post" do

      assert_select "input#trip_name[name=?]", "trip[name]"

      assert_select "textarea#trip_description[name=?]", "trip[description]"
    end
  end
end
