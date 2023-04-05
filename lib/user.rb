class User
  attr_accessor :name, :email, :phone

  @@all_user = []

  def initialize(name, email, phone)
    @name = name
    @email = email
    @phone = phone

    @@all_user.push(self)
    pp @@all_user
  end

  def self.email_exist(email)
    # Logic for checking if email exists
    # Loop the @@all_users array
    # we get the instance of the current user in the iteration
    # we compare the current user email with the parameter email
    # if is equal we return true else we return false

    @@all_user.find { |user| user.email == email } != nil

  end

  def self.phone_number_exists(phone)

    @@all_user.find { |user| user.phone == phone } != nil

  end

  def self.all
    @@all_user
  end

end

# example
# if User.email_exist("paulin.email.com") == false
#   pauline = User.new("Pauline", "paulin.email.com", "+23423423")
# end
# pauline = User.new("Pauline", "paulin.email.com", "+23423423")
# bernard = User.new("Bernard", "bernard.email.com", "+345345")
