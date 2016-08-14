kitchen = {
  cabinet:  {
      flour: [
        'Whole wheat',
        'Cake',
        'All-purpose',
        'Bread',
      ],
      chocolate: [
        'Dark ',
        'White',
        'Semi-sweet',
      ],
      sugar: [
        'White',
        'Dark brown',
        'Light brown',
        'Palm',
        'Powdered',
      ]
    },
  refrigerator: [
    'Eggs',
    'Butter',
  ]
}


puts "There are #{kitchen[:cabinet][:flour].length} different flours in the cabinet."
p kitchen[:cabinet][:sugar][2]
puts "There are #{kitchen[:refrigerator]} in the refrigerator"
