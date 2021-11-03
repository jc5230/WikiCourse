module NavigationHelpers
  def path_to(page_name)
    case page_name
    when /^the home page$/
      courses_home_path

    when /^the main page$/
      courses_main_path

    when /^the (.*) track$/
      courses_main_path(:track=>$1)
    end
  end
  def select_tag_in_track(tag, track)
    case tag
    when 'Breadth - AI & Applications'
      courses_main_path(:track=>track,
                        :required=>nil,
                        :breadth1=>nil,
                        :breadth2=>nil,
                        :breadth3=>'B3',
                        :elective=>nil)
    end
  end
end


World(NavigationHelpers)