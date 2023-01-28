#email:string
#password_digest:string
#password:string virtual attribute
#password_confirmation:string virtual attribute

class User < ApplicationRecord
    #Will convert the password, makes sure password and passoword confirmation match, and will take the password and run it through bcrypt to create a digest
    has_secure_password #going to add password and password confirmation and will hash it

    validates :email, presence: true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "must be valid email address"} #makes sure there is an email addresses for the users

end
