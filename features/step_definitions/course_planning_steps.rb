Given(/^the following courses exist:$/) do |courses_table|
  courses_table.hashes.each do |course|
    Course.create course
  end
end

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

Then /I should see all the courses/ do
  # Make sure that all the movies in the app are visible in the table
  Course.all.each do |course|
    step %{I should see "#{course.title}"}
  end
end

When /I (un)?check (.*)/ do |uncheck, tag_list|
  tag_list.split(',').each do |tag|
    tag = "#{tag.strip}"
    if uncheck
      uncheck(tag)
    else
      check(tag)
    end
  end
end

Then /^(?:|I )should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

Then /^(?:|I )should not see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_no_content(text)
  else
    assert page.has_no_content?(text)
  end
end

Then(/^I should be on (.+)$/) do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
    click_link(link)
end

Then(/^I should see (\d+) seed courses$/) do |seeds|
  expect(Course.count).to eq seeds.to_i
end