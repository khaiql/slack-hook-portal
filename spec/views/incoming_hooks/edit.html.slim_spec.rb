require 'rails_helper'

RSpec.describe "incoming_hooks/edit", type: :view do
  before(:each) do
    @incoming_hook = assign(:incoming_hook, IncomingHook.create!())
  end

  it "renders the edit incoming_hook form" do
    render

    assert_select "form[action=?][method=?]", incoming_hook_path(@incoming_hook), "post" do
    end
  end
end
