Given /^user = "([^\"]*)"$/ do |user|
  @user = user
end

Given /^password = "([^\"]*)"$/ do |password|
  @password = password
end

When /^I ask for submissions$/ do
  @pku = PKU.new(@user, @password)
end

Then /^I should get the submissions$/ do
  submissions = @pku.submissions
  submissions[0].should =~ /5137643/
  submissions[0].should =~ /rtreino/
  submissions[0].should =~ /1000/
  submissions[0].should =~ /Wrong Answer/
  submissions[0].should =~ /GCC/
  submissions[0].should =~ /30B/
  submissions[0].should =~ /2009-05-12 06:49:32/
end