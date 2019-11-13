# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

  attr_accessor :name, :csv_emails

  # Declare our initialize method passing in the argument of our comma separated values
  # Set the value of our instance variable equal to the info passed in

  def initialize(csv_emails)
    @csv_emails = csv_emails
  end

  # Declare our parse method
  # This method takes in our csv_emails string, and iterates them by splitting the address separated by commas and collects the split values
  # Splits the email addresses using a comma
  # It then flattens the array and returns only unqiue values

  def parse
    csv_emails.split.collect do |address|
      address.split(",")
    end
    .flatten.uniq
  end

end
