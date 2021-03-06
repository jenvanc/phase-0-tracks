# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(1, "o")
"zom".insert(2, "o")
# => “zoom”

"enhance".center(50)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(-1, " suspects")
"the usual".insert(9, " suspects")
"the usual" << " suspects"
"the usual".concat(" suspects")
#=> "the usual suspects"

" suspects".insert(0, "the usual")
" suspects".prepend("the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chomp("r")
"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".delete("T")
"The mystery of the missing first letter".slice(1..-1)
"The mystery of the missing first letter"
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
"Elementary,    my   dear        Watson!".join(" ")
# => "Elementary, my dear Watson!"

"z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z?)
# Each character that is recognized by Ruby also has an integer value, the ordinal.
# .ord returns the ordinal value of a single character string

"How many times does the letter 'a' appear in this string?".count("a")
# => 4
