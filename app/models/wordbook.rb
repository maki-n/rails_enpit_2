class Wordbook < ActiveRecord::Base
  def self.search(search)
    if search
      Wordbook.where(['english LIKE ?', "%#{search}%"])
    else
      Wordbook.all
    end
  end
end
