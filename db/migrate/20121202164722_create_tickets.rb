class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :quantity
      t.string :ticket_type
      t.integer :fan_id
      t.integer :match_id

      t.timestamps
    end
  end
end
