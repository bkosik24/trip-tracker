require 'rails_helper'

RSpec.describe "trips/edit", type: :view do
  before(:each) do
    @trip = assign(:trip, Trip.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit trip form" do
    render

    assert_select "form[action=?][method=?]", trip_path(@trip), "post" do

      assert_select "input#trip_name[name=?]", "trip[name]"

      assert_select "textarea#trip_description[name=?]", "trip[description]"
    end
  end
end
