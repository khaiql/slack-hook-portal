class AddMessageColumnToIncomingHooks < ActiveRecord::Migration
  def up
    change_table :incoming_hooks do |t|
      t.string :message, null: false
    end
  end
end
