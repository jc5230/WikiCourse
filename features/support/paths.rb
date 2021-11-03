module NavigationHelpers
  def path_to(page_name)
    case page_name
    when /^the home page$/
      courses_home_path

    when /^the main page$/
      courses_main_path

    when /^the (.*) track$/
      courses_main_path(page_name.match(/^the '(.*)' track$/)[1])
    end
  end
end


World(NavigationHelpers)