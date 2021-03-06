Given(/^the following courses exist:$/) do |courses_table|
  courses_table.hashes.each do |course|
    Course.create course
  end
end

Given(/^the following users exist:$/) do |users_table|
  users_table.hashes.each do |user|
    User.create user
  end
end

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

Given /^(?:|I )log in (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )choose ([^"]*) track$/ do |track|
  visit path_to_track(track)
end

And /^I click on the call number (\d+)$/ do |call|
  visit path_to_detail_page(call)
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
  visit path_to(link)
end

When /^(?:|I )check ([^"]*) label in ([^"]*) track$/ do |label, track|
  visit path_to_label(label, track)
end

When /^(?:|I )check multiple labels: ([^"]*) in ([^"]*) track$/ do |labels, track|
  visit path_to_labels(labels, track)
end

Then /I should see all the courses/ do
  Course.all.each do |course|
    step %{I should see "#{course.title}"}
  end
end

Then /^(?:|I )should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  end
end

Then /^(?:|I )should not see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_no_content(text)
  end
end

Then(/^I should be on (.+)$/) do |page_name|
  visit path_to(page_name)
end

Then(/^I should see (\d+) seed courses$/) do |seeds|
  expect(Course.count).to eq seeds.to_i
end

Then(/^(?:|I )uncheck ([^"]*) label in ([^"]*) track$/) do |label, track|
  visit path_to_track(track)
end

And(/^I click on Rate This Course for "([^"]*)"$/) do |page_name|
  visit path_to(page_name)
end

Then(/^I write some comments$/) do
  find("#comment").set 'new comments'
end

Then(/^I enter my credentials$/) do
  find("#login-un").set 'test'
  find("#login-pw").set 'test'
end

When /^I press "([^\"]*)"$/ do |button|
      
  click_button(button)
  
end