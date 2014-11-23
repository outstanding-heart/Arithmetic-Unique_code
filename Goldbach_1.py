#
# Author: Lee.HJ
# Create time: 11/23/2014
# Description: To prove the Goldbach that every even number which is bigger than four is equal that two prime numbers to add.

def Prime_number(Min, Max):
	word = []
	for i in range(Min, Max):
		count = 0
		for j in range(2, (i/2)+1):
			if i%j == 0:
				count = 1
				break
		if count == 0:
			word.append(i)
	return word


Max = int(raw_input("The max number is :"))

word = Prime_number(2,Max*2)
print word

for i in range(2, Max):
	main_num = 2 * i
	print main_num,
	for j in word:
		if j > main_num:
			break
		else:
			num_1 = j
			for k in word:
				num_2 = k
				if (num_2 + num_1) == main_num:
					print "=%d+%d" % (num_1,num_2) ,
				elif num_2 > main_num:
					break
				else:
					continue
	print "\n"
