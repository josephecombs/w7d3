class User < ActiveRecord::Base
  attr_accessible :username, :password
  attr_reader :password

  validates :username, :presence => true
  validates :password_digest, :presence => true, :message => "Password can't be blank"
  validates :password, :length => { :minimum => 6 }, :allow_blank => true

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end
end
