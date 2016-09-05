classroom = {
  "Steve's desk" => {
      supplies: [
        'Yellow pencil',
        'Blue notebook',
        'Rubber cement',
      ]
    },

    "Suzie's desk" => {
      supplies: [
        'Safety scissors',
        'White glue',
        'Colored pencils'
      ]
    },

    "Ellie's desk" => {
      supplies: [
        'Pink folder',
        'Tape',
        'Mini stapler'
      ]
    }
  }

  puts "Steve has #{classroom["Steve's desk"][:supplies]} in his desk."
  p classroom["Ellie's desk"][:supplies][2]
