require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :title => "MyString",
      :description => "MyText",
      :completed => false,
      :public => false
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_title[name=?]", "item[title]"

      assert_select "textarea#item_description[name=?]", "item[description]"

      assert_select "input#item_completed[name=?]", "item[completed]"

      assert_select "input#item_public[name=?]", "item[public]"
    end
  end
end
