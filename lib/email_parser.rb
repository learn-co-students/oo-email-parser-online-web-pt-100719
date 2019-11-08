# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
  
  attr_accessor :emails

  # @@all = []
  
  def initialize(emails)
  @emails = emails
  end 
  
  def parse
  email = []
  email =@emails.split(/[,\s]/)
  email = email.reject{|sym| sym == ""}
  email.uniq 
  end 

 # binding.pry 
end 
       