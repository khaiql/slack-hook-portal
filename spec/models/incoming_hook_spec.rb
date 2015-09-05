require 'rails_helper'

RSpec.describe IncomingHook, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:webhook_url) }
  subject { IncomingHook.new(name: 'test', webhook_url: 'http://test')}
  it { should validate_uniqueness_of(:slug) }
end
