#!/usr/bin/env ruby

def quicksort(values)
  return values if values.length == 1 || values.length == 0
  left = []
  right = []

  # Find median as pivot
  first = values.first
  middle = values[values.length / 2]
  last = values.last
  if first > middle && first < last
    pivot_index = 0
  elsif last > middle && last < first
    pivot_index = values.length - 1
  else
    pivot_index = values.length / 2
  end
  pivot = values[pivot_index]

  values.each_with_index do |value, index|
    next if index == pivot_index
    value < pivot ? left << value : right << value
  end

  quicksort(left) + [pivot] + quicksort(right)
end

values = [3, 44, 2, 45, 3, 3, 2, 52, 0, -1, -52]
puts "Values: #{values}"
puts "Quicksorted: #{quicksort(values)}"