class CreateSakenoteSakes < ActiveRecord::Migration[5.2]
  def change
    create_table :sakenote_sakes do |t|
      t.string :sake_identify_code
      t.string :sake_name
      t.string :sake_furigana
      t.string :sake_alphabet
      t.bigint :maker_id
      t.string :maker_name
      t.string :maker_postcode
      t.string :maker_address
      t.string :maker_url
      t.string :url
      t.boolean :discontinued

      t.timestamps
    end
  end
end
