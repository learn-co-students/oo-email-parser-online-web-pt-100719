# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  
  attr_accessor :emails

  def initialize(emails) 
    @emails = emails
  end
  
  def parse 
    self.emails.gsub(",","").split(" ").uniq
  end
end
   
   

  
  
#   describe "EmailAddressParser" do
#   describe '#parse' do
#     it "parses CSV emails" do
#       expect(EmailAddressParser.new("avi@test.com, arel@test.com").parse).to eq(["avi@test.com", "arel@test.com"])
#     end

#     it "parses space delimited emails" do
#       expect(EmailAddressParser.new("avi@test.com arel@test.com").parse).to eq(["avi@test.com", "arel@test.com"])
#     end

#     it "parses both CSV and space delimited emails" do
#       emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
#       expect(EmailAddressParser.new(emails).parse).to eq(["avi@test.com", "arel@test.com","test@avi.com", "test@arel.com"]) 
#     end

#     it 'parses and removes duplicate emails' do
#       expect(EmailAddressParser.new("avi@test.com, avi@test.com").parse).to eq(["avi@test.com"])
#     end
#   end
# end
