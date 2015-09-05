require 'rails_helper'

RSpec.describe "incoming_hooks/new", type: :view do
  before(:each) do
    assign(:incoming_hook, IncomingHook.new())
  end

  it "renders new incoming_hook form" do
    render

    assert_select "form[action=?][method=?]", incoming_hooks_path, "post" do
    end
  end
end
