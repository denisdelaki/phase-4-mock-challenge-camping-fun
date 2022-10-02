class CreateSignups < ActiveRecord::Migration[6.1]
  def change
    create_table :signups do |t|
      t.belongs_to :activity, null: false, forein_key: true
      t.belongs_to :camper,null: false, forein_key: true
      t.integer :time

      t.timestamps
    end
  end
end
