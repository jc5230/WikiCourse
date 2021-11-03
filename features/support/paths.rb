module NavigationHelpers
  def path_to(page_name)
    case page_name
    when /^the main page$/
      main_path
    end
  end
end

World(NavigationHelpers)