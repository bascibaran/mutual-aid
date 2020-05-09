require 'rails_helper'

RSpec.describe "software_feedbacks/new", type: :view do
  before(:each) do
    assign(:software_feedback, SoftwareFeedback.new(
      created_by: nil,
      feedback_type: "MyString",
      module_name: "MyString",
      page_url: "MyString",
      name: "MyString",
      urgency: "MyString",
      urgency_order: 1,
      notes: "MyString",
      completed: false
    ))
  end

  it "renders new software_feedback form" do
    render

    # assert_select "form[action=?][method=?]", software_feedbacks_path, "post" do

      assert_select "select[name=?]", "software_feedback[created_by_id]"

      assert_select "input[name=?]", "software_feedback[feedback_type]"

      assert_select "input[name=?]", "software_feedback[module_name]"

      assert_select "input[name=?]", "software_feedback[page_url]"

      assert_select "input[name=?]", "software_feedback[name]"

      assert_select "input[name=?]", "software_feedback[urgency]"

      assert_select "input[name=?]", "software_feedback[urgency_order]"

      assert_select "input[name=?]", "software_feedback[notes]"

      assert_select "input[name=?]", "software_feedback[completed]"
    # end
  end
end
