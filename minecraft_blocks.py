num_columns = 1
while num_columns < 25:
	space = 0
	while space < 10:
		buffer_room = 0
		while buffer_room < 10:
			total = 2*buffer_room + num_columns*4 + (num_columns-1)*space
			if total == (333-167):
				print("columns:",num_columns, "space",space, "buffer",buffer_room, total)
			buffer_room +=1
		space += 1
	num_columns += 1


