
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
                        :required=>0,
                        :breadth1=>0,
                        :breadth2=> 0,
                        :breadth3=>'B3',
                        :elective=>0)

      when /^(.*) track$/
        courses_main_path(:track => $1)
    end

  end
end


