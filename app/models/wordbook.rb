class Wordbook < ActiveRecord::Base
  validates :japanese, length: { maximum: 10 }
  validates :english, length: { maximum: 10 }

  def self.search(search)
    if search
      Wordbook.where(['english LIKE ?', "%#{search}%"])
    else
      Wordbook.all
    end
  end
  def self.quiz(quiz)
    Wordbook.all
  end
end
