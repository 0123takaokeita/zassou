require "test_helper"

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  body       :text
#  commenter  :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  article_id :bigint           not null
#
# Indexes
#
#  index_comments_on_article_id  (article_id)
#
# Foreign Keys
#
#  fk_rails_...  (article_id => articles.id)
#
