class Sakenote::Maker < ApplicationRecord
  has_many :sakes, primary_key: :maker_id, foreign_key: :maker_id
end
