class Subscriber < ActiveRecord::Base
  attr_accessible :email
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence   => true,
                    :uniqueness => { :case_sensitive => false, :message => "We already have you on the list." },
                    :format     => { :with => email_regex, :message => "Please enter a valid email." }
  
end
