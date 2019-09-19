#!/bin/bash

for fileName in ./*.cpp ; do
	len=${#fileName};
	tmp=$fileName;
	if [[ "${tmp:2:len}" != "myscript.sh" ]]; then
		llExists=$(find ./ -name "${tmp:2:len-5}ll" | wc -l)
		llMemOptExists=$(find ./ -name "${tmp:2:len-5}memopt.ll" | wc -l)
		llIndVarExists=$(find ./ -name "${tmp:2:len-5}indvar.ll" | wc -l)
		llLSRExists=$(find ./ -name "${tmp:2:len-5}lsr.ll" | wc -l)
		llLoopVectExists=$(find ./ -name "${tmp:2:len-5}loopV.ll" | wc -l)
		if [[ $llExists -le 0 ]]; then
			echo "Building ${tmp:2:len-5}ll"
			clang -O0 -Xclang -disable-O0-optnone -emit-llvm -S $fileName -o "${tmp:2:len-5}ll";
		fi
		if [[ $llMemOptExists -le 0 ]]; then
			echo "Building ${tmp:2:len-5}memopt.ll"
			opt -mem2reg "${tmp:2:len-5}ll" -S > "${tmp:2:len-5}memopt.ll"
		fi
		if [[ $llLSRExists -le 0 ]]; then
			echo "Building ${tmp:2:len-5}lsr.ll"
			opt -loop-reduce "${tmp:2:len-5}memopt.ll" -S > "${tmp:2:len-5}lsr.ll"
		fi
		if [[ $llIndVarExists -le 0 ]]; then
			echo "Building ${tmp:2:len-5}indvar.ll"
			opt -indvars "${tmp:2:len-5}memopt.ll" -S > "${tmp:2:len-5}indvar.ll"
		fi
                if [[ $llLoopVectExists -le 0 ]]; then
                        echo "Building ${tmp:2:len-5}loopV.ll "
                        opt -loop-vectorize "${tmp:2:len-5}memopt.ll" -S > "${tmp:2:len-5}loopV.ll"
                fi
		echo $tmp
	fi
done
