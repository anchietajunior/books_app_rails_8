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
  def author_with_country
    puts "#{name} from #{country}"
  end
end
