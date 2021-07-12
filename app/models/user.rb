class User < ApplicationRecord
  before_create CreateAgeAtCallback.new
end
  before_create :ensure_has_name
  after_initialize do |user|
    p user
    puts "You have created an object!"
    user.name = "Taro"
  end
  before_create do
      self.name = 'Taro' if name.blank?
  end
  before_create :ensure_has_name

def ensure_has_name
  self.name = 'Taro' if name.blank?
end
before_save do
   puts 'First called Callback'
 end
 before_save do
   puts 'Second called Callback'
 end
end
