require 'rails_helper'

RSpec.describe IncomingHook, type: :model do
  subject { create(:incoming_hook, webhook_url: 'https://hooks.slack.com/services/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') }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:webhook_url) }
  it { should allow_value('https://hooks.slack.com/services/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').for(:webhook_url) }
  it { should_not allow_value('http://dantri.com').for(:webhook_url) }
  it { should validate_presence_of(:message) }
  it { should validate_uniqueness_of(:slug) }

  describe "#options_hash" do
    let(:incoming_hook) { create(:incoming_hook, icon_emoji: ':smile:', channel: '#general', username: 'Bot') }
    let(:expected_hash) do
      {
        channel: '#general',
        icon_emoji: ':smile:',
        username: 'Bot'
      }
    end
    it "returns hash with efficent keys and values" do
      expect(incoming_hook.options_hash).to match expected_hash
    end
  end
end
