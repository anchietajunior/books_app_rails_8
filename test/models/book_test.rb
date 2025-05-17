# == Schema Information
#
# Table name: books
#
#  id               :integer          not null, primary key
#  cover            :string
#  publication_year :integer
#  title            :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  author_id        :integer          not null
#  category_id      :integer          not null
#
# Indexes
#
#  index_books_on_author_id    (author_id)
#  index_books_on_category_id  (category_id)
#
# Foreign Keys
#
#  author_id    (author_id => authors.id)
#  category_id  (category_id => categories.id)
#
require "test_helper"

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
