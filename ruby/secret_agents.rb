#encrypt algorithm
#start at index [0]
# -at current index, change letter to next letter in alphabet
# -if a space character is present, leave space

#decrypt algorithm
#defining "abcdefghijklmnopqrstuvwxyz" as variable
# -if space in password, leave it be
# -find index of letter in alphabet
# -Once target index found, move back one index
# -save new index as password to decrypt

def encrypt(password)
	count = 0
	while count < password.length
		if password[count] != " "
			password[count] = password[count].next
		end
		count += 1
	end
	password
end
