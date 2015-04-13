class User < ActiveRecord::Base
 validates_presence_of :firstname, :lastname, :password, :email_id, :phone
 validates_format_of :email_id, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

has_many :story

def check_login
	User.login(self.firstname, self.password)
end
def self.login(firstname,password)
	User.where(firstname: firstname,password: password).first
#find(:first,:conditions => ["firstname = ? and password =?",firstname, password])
end

end
