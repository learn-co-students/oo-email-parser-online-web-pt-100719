# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
attr_accessor :email_addresses

@@all = []

def initialize(email_addresses)
@email_addresses = email_addresses
end

def parse
  new_array = []
  email_addresses.split.collect do |email|
    new_array << email.split(",")
  end
  new_array.flatten.uniq 
end





end