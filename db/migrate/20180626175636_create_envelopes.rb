class CreateEnvelopes < ActiveRecord::Migration[5.2]
  def change
    create_table :envelopes do |t|
      t.string :in_prod
      t.string :model
      t.string :fg_item
      t.string :item
      t.integer :fill_count
      t.integer :in_sht_req
      t.string :net_reqd
      t.string :available
      t.integer :avail_shts
      t.string :whs_avail_now
      t.integer :this_id
      t.integer :linked_to_id
      t.string :ship_whse
      t.string :make_whse
      t.integer :planned_env
      t.integer :outs
      t.string :uses_safety_stock
      t.string :lined_type
      t.date :e_date
      t.string :scenario
      t.text :note
    end
  end
end
