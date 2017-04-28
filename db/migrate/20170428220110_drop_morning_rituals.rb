class DropMorningRituals < ActiveRecord::Migration[5.0]
  def change
  	drop_table :morning_rituals
  end
end
