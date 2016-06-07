def shuffle(array)
  # j = Random.new
  for i in 0..array.length-1
    j = rand(i..array.length)
    array[i], array[j] = array[j], array[i] if j != i
  end
end


# Driver code:
array = (1..15).to_a

# Esto no deberá arrojar una excepción
10.times do |variable|
    raise "No esta revolviendo bien" if shuffle(array) == shuffle(array)
end
p true