# A ruby program to tally occurences of blank-separated "words" on the standard input
# run with command "ruby tally-for.rb < xref.1"
# use default of zero
counts = Hash.new(0)

readlines.each do 
	|line|
	line.split(" ").each do
		|word|
		counts[word] += 1
	end
end

#Hash.sort produces an array of key/value arrays ordered by the keys, in ascending order

# produce nicely labeled output 
([["Word", "Count"]] + counts.sort).each do
	|k,v| printf("%-7s %5s\n", k, v)
end

# %-7s left-justifies in a field of width seven
# we use %5s instead of %5d to formats and accommodate th "Count", too