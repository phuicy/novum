require 'rails_helper'

RSpec.describe "sections/edit", type: :view do
  before(:each) do
    @section = assign(:section, Section.create!(
      :title => "MyString",
      :text => "MyText",
      :article => nil
    ))
  end

  it "renders the edit section form" do
    render

    assert_select "form[action=?][method=?]", section_path(@section), "post" do

      assert_select "input#section_title[name=?]", "section[title]"

      assert_select "textarea#section_text[name=?]", "section[text]"

      assert_select "input#section_article_id[name=?]", "section[article_id]"
    end
  end
end
