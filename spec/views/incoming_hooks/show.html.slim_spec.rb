require 'rails_helper'

RSpec.describe "incoming_hooks/show", type: :view do
  before(:each) do
    @incoming_hook = assign(:incoming_hook, IncomingHook.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
