Given(/^the following courses exist:$/) do |courses_table|
  courses_table.hashes.each do |course|
    Course.create course
  end
end

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
  click_link(link)
end

When /^(?:|I )check "([^"]*)"$/ do |tag|
  click_link(tag)
end

Then /I should see all the courses/ do
  # Make sure that all the movies in the app are visible in the table
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
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == path_to(page_name)
  end
  #visit path_to(page_name)
end



Then(/^I should see (\d+) seed courses$/) do |seeds|
  expect(Course.count).to eq seeds.to_i
end