require 'lib/pku'
# require 'spec'

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
  @pku.submissions.should have "5137643	rtreino	1000	Wrong Answer			GCC	30B	2009-05-12 06:49:32"
end