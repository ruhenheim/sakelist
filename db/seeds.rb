# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Sakes-seed
# require_relative 'lib/sake_note_api'
require "#{Rails.root}/lib/sake_note_api.rb"

# 
# Sakenote::酒一覧
# 
res_sakes = SakeNoteApi.sakes
res_sakes["sakes"].each {|sake| Sakenote::Sake.create!(sake)}  # 1page目
sake_pages = res_sakes["num_pages"]
if sake_pages > 1
  (2..sake_pages).each do |page|
    SakeNoteApi.sakes(page: page)["sakes"].each do |sake|
      Sakenote::Sake.create!(sake)
    end
  end
end

# 
# Sakenote::酒蔵一覧
# 
res_makers = SakeNoteApi.makers
res_makers["makers"].each {|maker| Sakenote::Maker.create!(maker)}  # 1page目
maker_pages = res_makers["num_pages"]
if maker_pages > 1
  (2..maker_pages).each do |page|
    SakeNoteApi.makers(page: page)["makers"].each do |maker|
      Sakenote::Maker.create!(maker)
    end
  end
end

