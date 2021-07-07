# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :email
  def initialize(emails)
    @email = emails
  end
  def parse
    new_arr = email.split(/[, ]/).uniq
    new_arr.reject! {|chars| chars.empty?}
    new_arr
  end
end