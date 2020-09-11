class Look_and_say
  def initialize(length = 1, d = 1)
    @mass = [d]
    @length = length
  end
	
  def show
    while(@length > 0)
      mass2 = Array.new
      print (@mass.join + "\n")
      i = 0
      while (i < @mass.size)
        count, j = count_num(i, @mass)
        mass2.push(count)
        mass2.push(@mass[i])
        i = j
      end
      @mass = mass2.clone
      @length -= 1
    end
  end

  private 

  def count_num(i, mass)
    count = 1
    j = i + 1
    while (j < mass.size && mass[i] == mass[j])
      count += 1
      j += 1
    end
    return count, j
  end
end

print "Введите длинну последовательности : "
length = gets.chop.to_i
print "Введите начальный элемент : "
first_look = Look_and_say.new(length, gets.chop.to_i)
first_look.show
t = gets