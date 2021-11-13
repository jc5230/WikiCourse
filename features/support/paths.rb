module NavigationHelpers
  def path_to(page_name)

    case page_name
    when /^the home page$/
      courses_home_path

    when /^the main page$/
      courses_main_path
      #page_name.match(/^the '(.*)' track$/)[1]
      #
    when /^Breadth - AI & Applications$/
      courses_main_path(:track=>'Software System',
                        :required=>nil,
                        :breadth1=>nil,
                        :breadth2=> nil,
                        :breadth3=>'B3',
                        :elective=>nil)

    when /^(.*) track$/
      courses_main_path(:track => $1)


    end

  end
end

World(NavigationHelpers)

