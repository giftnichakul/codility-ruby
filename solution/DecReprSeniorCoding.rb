def drsc(number)
  str_array = number.to_s.chars.sort{ |a,b| b <=> a}
  return str_array.join("").to_i
end
