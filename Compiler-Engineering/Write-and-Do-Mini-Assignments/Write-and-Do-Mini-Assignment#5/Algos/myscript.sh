#!/bin/bash

for fileName in ./*.cpp ; do
	len=${#fileName};
	tmp=$fileName;
	if [[ "${tmp:2:len}" != "myscript.sh" ]]; then
		llMemOptExists=$(find ./ -name "${tmp:2:len-5}memopt.ll" | wc -l)
		llExists=$(find ./ -name "${tmp:2:len-5}ll" | wc -l)
		if [[ $llExists -le 0 || $llMemOptExists -le 0 ]]; then
			echo "Building ${tmp:2:len-5}ll"
			clang -O0 -Xclang -disable-O0-optnone -emit-llvm -S $fileName -o "${tmp:2:len-5}ll";
			echo "Building ${tmp:2:len-5}memopt.ll"
			opt -mem2reg "${tmp:2:len-5}ll" -S > "${tmp:2:len-5}memopt.ll"
		fi
	fi
done
