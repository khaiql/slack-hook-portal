class IncomingHook < ActiveRecord::Base
  extend FriendlyId

  friendly_id :name, :use => [:slugged, :finders]

  validates_presence_of :name
  validates_presence_of :webhook_url
  validates_uniqueness_of :slug
end
