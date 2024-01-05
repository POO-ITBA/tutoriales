require 'sorted_set'

ss = SortedSet.new
ss << 3 << 1 << 5

ss.each { |e| p e }