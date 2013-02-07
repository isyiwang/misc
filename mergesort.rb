#!/usr/bin/env ruby

def mergesort(values)
  l, r = values[0..values.size / 2 - 1], values[values.size / 2, values.size - 1]

  l = mergesort(l) if l.size > 1
  r = mergesort(r) if r.size > 1

  merge(l, r)
end

def merge(l, r)
  values = []
  value = 0
  (l.size + r.size).times do |i|
    if l.empty?
      value = r.min
      r.delete(value)
    elsif r.empty?
      value = l.min
      l.delete(value)
    elsif l.first < r.first
      value, *l = *l
    else
      value, *r = *r
    end
    values << value
  end
  values
end

a = [3, 5, 2, -1, 3, 100, 398, -398]
puts "Values: #{a}"
puts "Sorted: #{mergesort(a)}"
