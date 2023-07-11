class Article < ApplicationRecord
  include Visible

  # 記事が削除されたら、その記事に関連するコメントも削除する
  has_many :comments, dependent: :destroy

  # title必須
  validates :title, presence: true

  # bodyは8文字以上
  validates :body, presence: true, length: { minimum: 8 }
end

# == Schema Information
#
# Table name: articles
#
#  id         :bigint           not null, primary key
#  body       :text
#  status     :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
