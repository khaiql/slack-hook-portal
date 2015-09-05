class CreateIncomingHooks < ActiveRecord::Migration
  def up
    create_table :incoming_hooks do |t|
      t.string :name, null: false, index: true
      t.string :webhook_url, null: false
      t.string :slug, index: true
      t.string :username
      t.string :icon_emoji
      t.string :icon_url
      t.string :channel
      t.timestamps null: false
    end
  end

  def down
    drop_table :incoming_hooks
  end
end
