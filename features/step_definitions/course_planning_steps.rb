Given(/^the following courses exist:$/) do |courses_table|
  courses_table.hashes.each do |course|
    Course.create course
  end
end

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When(/^I press "([^"]*)"$/) do |button|
  click_button(button)
end

Then(/^I should see all the courses$/) do
  expect(page.body.to_s.split("<tr>
<td>").count - 1).to eq Course.count
end

When /I (un)?check the following tags: (.*)/ do |uncheck, tag_list|
  tag_list.split(',').each do |tag|
    tag = "tags_#{tag.strip}"
    if uncheck
      uncheck tag
    else
      check tag
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

