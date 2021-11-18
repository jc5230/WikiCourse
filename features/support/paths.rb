module NavigationHelpers
  def path_to(page_name)

    case page_name
    when /^the home page$/
      courses_home_path

    when /^Back to home$/
      courses_home_path

    when /^the main page$/
      courses_main_path

    when/^the detail page for "(.+)"$/
      courses_detail_path(:call=>Course.find_by_title($1).call)


    when/^the comment page for "(.+)"$/
      courses_comment_path(:call=>Course.find_by_title($1).call)

    when/^Submit$/
      courses_detail_path(@call)
    else
      courses_comment_path(:call=>Course.find_by_title(page_name).call)

    end
  end

  def path_to_detail_page(call)
    courses_detail_path(:call=>call)
  end
  def path_to_track(track_name)
    courses_main_path(:track => track_name)
  end

  def path_to_label(label, track)
    case label
    when 'Required Track Courses'
      courses_main_path(:track=>track,
                        :required=>'1',
                        :breadth1=>nil,
                        :breadth2=> nil,
                        :breadth3=>nil,
                        :elective=>nil)
    when 'Track Electives'
      courses_main_path(:track=>track,
                        :required=>nil,
                        :breadth1=>nil,
                        :breadth2=> nil,
                        :breadth3=>nil,
                        :elective=>'1')

    when 'Breadth - AI & Applications'
      courses_main_path(:track=>track,
                        :required=>nil,
                        :breadth1=>nil,
                        :breadth2=>nil,
                        :breadth3=>'B3',
                        :elective=>nil)
    end
  end

  def path_to_labels(labels, track)
    label_array = labels.split(",").map(&:strip)
    required, elective, breadth1, breadth2, breadth3 = [nil, nil, nil, nil, nil]
    if label_array.include?('Required Track Courses')
      required = '1'
    end
    if label_array.include?('Track Electives')
      elective = '1'
    end
    if label_array.include?('Breadth - Systems')
      breadth1 = 'B1'
    end
    if label_array.include?('Breadth - Theory')
      breadth2 = 'B2'
    end
    if label_array.include?('Breadth - AI & Applications')
      breadth3 = 'B3'
    end
    courses_main_path(:track=>track,
                      :elective=>elective,
                      :required=>required,
                      :breadth1=>breadth1,
                      :breadth2=>breadth2,
                      :breadth3=>breadth3)
  end

end

World(NavigationHelpers)

