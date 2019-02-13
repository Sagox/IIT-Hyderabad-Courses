note
	description: "assignments application root class"
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS_32

create
	make

feature {NONE} -- Initialization

	matrix: MATRIX
	determinant: REAL
	adj:MATRIX

	make
			-- Run application.
	local
		i: INTEGER
		j: INTEGER
		to_split: STRING
		num_as_string: LIST[STRING]
	do
		Io.read_integer
		create matrix.make (Io.last_integer)
		create adj.make(Io.last_integer)
		from
			i := 1
		until
			i > matrix.size
		loop
			Io.read_line
			to_split := Io.last_string
			num_as_string := to_split.split(' ')
			from
				j := 1
			until
				j > matrix.size
			loop
				matrix.put_value (num_as_string.at (j).to_integer, i, j)
				j := j+1
			end
			i := i+1
		end
		adj:=matrix.get_inverse
		--Io.put_real (determinant)
		from
			i:=1
		until
			i>matrix.size
		loop
			from
				j := 1
			until
				j>matrix.size
			loop
				Io.put_real (adj.get_value (i, j))
				Io.put_character (' ')
				j := j+1
			end
			Io.put_new_line
			i:=i+1
		end
		Io.put_new_line
	end

end
