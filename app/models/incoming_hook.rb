class IncomingHook < ActiveRecord::Base
  extend FriendlyId

  friendly_id :name, :use => [:slugged, :finders]

  validates_presence_of :name
  validates_presence_of :message
  validates_uniqueness_of :slug
  validates :webhook_url, presence: true, format: /https:\/\/hooks.slack.com\/services\/T\S{8}\/B\S{8}\/\S{24}/i

  def options_hash
    [:channel, :username, :icon_emoji, :icon_url].inject({}) do |hash, column|
      value = self.send(column)
      hash[column] = value if value.present?
      hash
    end
  end
end
