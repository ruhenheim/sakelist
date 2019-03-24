class Sakenote::Sake < ApplicationRecord
  belongs_to :maker, primary_key: :maker_id, foreign_key: :maker_id
end
