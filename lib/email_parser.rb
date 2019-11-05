require 'pry'

class EmailAddressParser
        attr_accessor :email
        
  def initialize(email)
    @email = email
  end
  
  def parse
    if email.include?(", ")
    address = email.split(", ").uniq
  elsif email.include?(" ")
    address = email.split(" ").uniq
  else
    address = email.split(" ").uniq
    new_addresses = address.split(", ")
  end  
  end
end









# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
