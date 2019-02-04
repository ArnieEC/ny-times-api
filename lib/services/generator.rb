require_relative '../../states'

class StateGenerator
  def random_state
    states = [
      "Alaska",
      "Alabama",
      "Arkansas",
      # "American Samoa",
      "Arizona",
      "California",
      "Colorado",
      "Connecticut",
      # "District of Columbia",
      "Delaware",
      "Florida",
      "Georgia",
      "Guam",
      "Hawaii",
      "Iowa",
      "Idaho",
      "Illinois",
      "Indiana",
      "Kansas",
      "Kentucky",
      "Louisiana",
      "Massachusetts",
      "Maryland",
      "Maine",
      "Michigan",
      "Minnesota",
      "Missouri",
      "Mississippi",
      "Montana",
      # "North Carolina",
      # "North Dakota",
      "Nebraska",
      # "New Hampshire",
      # "New Jersey",
      # "New Mexico",
      "Nevada",
      # "New York",
      "Ohio",
      "Oklahoma",
      "Oregon",
      "Pennsylvania",
      # "Puerto Rico",
      # "Rhode Island",
      # "South Carolina",
      # "South Dakota",
      "Tennessee",
      "Texas",
      "Utah",
      "Virginia",
      # "Virgin Islands",
      "Vermont",
      "Washington",
      "Wisconsin",
      # "West Virginia",
      "Wyoming"
    ]
    states[rand(states.length)]
  end
end

test = StateGenerator.new
p test.random_state
