require 'rails_helper'

RSpec.describe "incoming_hooks/index", type: :view do
  before(:each) do
    assign(:incoming_hooks, [
      IncomingHook.create!(),
      IncomingHook.create!()
    ])
  end

  it "renders a list of incoming_hooks" do
    render
  end
end
