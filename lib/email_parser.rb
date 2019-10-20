class EmailParser
  
  attr_accessor :name, :csv_emails
  
  def initialize(csv_emails)
    @name = name
    @csv_emails = csv_emails
  end
  
def parse 
    csv_emails.split.collect do |address|
      address.split(',') 
    end
    .flatten.uniq 
  end 
end 


email_addresses = "john@doe.com, person@somewhere.org"
parse = EmailAdresseParse.new(email_addresses)

parse.parse