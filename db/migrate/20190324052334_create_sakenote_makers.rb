class CreateSakenoteMakers < ActiveRecord::Migration[5.2]
  def change
    create_table :sakenote_makers do |t|
      t.bigint :maker_id
      t.string :maker_name
      t.string :maker_postcode
      t.string :maker_address
      t.string :maker_url
      t.string :url
      t.boolean :close

      t.timestamps
    end
  end
end
