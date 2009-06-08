Given /^user = "([^\"]*)"$/ do |user|
  @user = user
end

When /^I ask for submissions$/ do
  
end

Then /^I should get the submissions$/ do
  PKU.submissions_for(@user).should =~ /5137643\s+rtreino\s+1000\s+Wrong\s+Answer\s+GCC\s+30B\s+2009-05-12\s+06:49:32/
end