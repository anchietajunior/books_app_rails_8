# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  birthday   :date
#  country    :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Author < ApplicationRecord
  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [ 80, 80 ]
  end
end
