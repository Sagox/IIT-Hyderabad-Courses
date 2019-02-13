note
	EIS: "name=Unnamed", "protocol=URI", "src=http://www.yourwebsite.com"

class
	MATRIX

create
	make

feature
	size: INTEGER

	values: ARRAY [REAL]

	make(n: INTEGER)
		do
			size := n
			create values.make_filled(0,1, n*n)
		end

	get_value(row: INTEGER; coloumn: INTEGER): REAL
	do
		Result := values @ ((row - 1)*size + coloumn)
	end

	put_value(value:REAL;row: INTEGER; coloumn: INTEGER)
	do
		values.put(value,((row - 1)*size + coloumn))
	end

	get_cofactor_matrix (p:INTEGER; q: INTEGER): MATRIX
		local
			temp: MATRIX
			i: INTEGER
			j: INTEGER
			row: INTEGER
			coloumn: INTEGER
		do
			i:=1
			j:=1
			create temp.make (size - 1)
			from
				row := 1
			until
				row > size
			loop
				from
					coloumn := 1
				until
					coloumn > size
				loop
					if row /= p and coloumn /= q
					then
						temp.put_value(get_value(row,coloumn),i,j)
						j := j + 1
						if j = size
						then
							j := 1
							i := i + 1
						end
					end
					coloumn := coloumn + 1
				end
				row := row + 1
			end
			Result := temp
		end

	get_determinant: REAL

	local
		determinant: REAL
		sign: INTEGER
		i: INTEGER
		temp: MATRIX
	do
		determinant := 0
		if size = 1
		then
			Result := get_value(1,1)
		else
			create temp.make (size - 1)
			sign := 1
			from
				i:=1
			until
				i>size
			loop
				temp := get_cofactor_matrix (1,i)
				determinant := determinant + sign * get_value(1,i)*temp.get_determinant
				sign:=-sign
				i := i+1
			end
			Result := determinant
		end
	end

	get_adjoint: MATRIX
	local
		adj:MATRIX
		temp: MATRIX
		sign: INTEGER
		i:INTEGER
		j:INTEGER
	do
		if size = 1
	    then
			create adj.make (1)
			adj.put_value (1, 1, 1)
			Result := adj
		else
			create adj.make (size)
			create temp.make (size)
			from
				i:=1
			until
				i>size
			loop
				from
					j:=1
				until
					j>size
				loop
					temp:=get_cofactor_matrix(i,j)
					if (i+j)\\2 = 0
					then
						sign := 1
					else
						sign := -1
					end
					adj.put_value (sign*(temp.get_determinant), j, i)
					j:= j+1
				end
				i:=i+1
			end
		end
		Result:= adj
	end
	get_inverse: MATRIX
	local
	adj:MATRIX
	determinant:REAL
	i:INTEGER
	j:INTEGER
	do
		determinant := get_determinant
		create adj.make (size)
		if determinant = 0 then
			print("Singular Matrix%N")
			Result := adj
		else
			adj := get_adjoint
			from
				i:=1
			until
				i>size
			loop
				from
					j:=1
				until
					j>size
				loop
					adj.put_value (adj.get_value (i, j)/determinant, i, j)
					j := j+1
				end
				i := i+1
			end
			Result := adj
		end
	end
invariant
	consistent_size: (size /= 0) implies (values.count = size*size)

end
