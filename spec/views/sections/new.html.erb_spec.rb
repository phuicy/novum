require 'rails_helper'

RSpec.describe "sections/new", type: :view do
  before(:each) do
    assign(:section, Section.new(
      :title => "MyString",
      :text => "MyText",
      :article => nil
    ))
  end

  it "renders new section form" do
    render

    assert_select "form[action=?][method=?]", sections_path, "post" do

      assert_select "input#section_title[name=?]", "section[title]"

      assert_select "textarea#section_text[name=?]", "section[text]"

      assert_select "input#section_article_id[name=?]", "section[article_id]"
    end
  end
end
