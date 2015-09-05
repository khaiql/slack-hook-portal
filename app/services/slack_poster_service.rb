class SlackPosterService
  attr_reader :incoming_hook
  attr_accessor :poster

  def initialize(incoming_hook)
    @incoming_hook = incoming_hook
    @poster = Slack::Poster.new(incoming_hook.webhook_url, incoming_hook.options_hash)
  end

  def post_message(custom_message = nil)
    if poster
      message = custom_message.blank? ? incoming_hook.message : custom_message
      poster.send_message(message)
    end
  end
end