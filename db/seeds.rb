# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"
CSV.foreach("db/question.csv", headers: true) do |row|
  Question.create(
    id: row["id"],
    exam_id: row["exam_id"],
    sentence: row["sentence"],
    answer: row["answer"],
    supplement1: row["supplement1"],
    supplement2: row["supplement2"],
    supplement3: row["supplement3"],
    supplement4: row["supplement4"],
    supplement5: row["supplement5"],
    sub_sentence: row["sub_sentence"],
    sub_sentence2: row["sub_sentence2"],
    sub_sentence3: row["sub_sentence3"],
    sub_sentence4: row["sub_sentence4"],
    sub_sentence5: row["sub_sentence5"],
    sub_sentence4_2: row["sub_sentence4_2"],
  )
end