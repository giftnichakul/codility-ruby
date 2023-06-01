class DiverseWord
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def solution
    ans = ''
    a = @a
    b = @b
    c = @c
    con_a = 0
    con_b = 0
    con_c = 0

    while a != 0 || b != 0 || c != 0
      if (a >= b && a >= c && con_a < 2) || (con_b == 2 && a >= 1) || (con_c == 2 && a >= 1)
        ans += 'a'
        con_a += 1
        a -= 1
        con_b = 0
        con_c = 0
      elsif (b >= a && b >= c && con_b < 2) || (con_a == 2 && b >= 1) || (con_c == 2 && b >= 1)
        ans += 'b'
        con_b += 1
        b -= 1
        con_a = 0
        con_c = 0
      elsif (c >= a && c >= b && con_c < 2) || (con_a == 2 && c >= 1) || (con_b == 2 && c >= 1)
        ans += 'c'
        con_c += 1
        c -= 1
        con_a = 0
        con_b = 0
      else
        break
      end
    end
    ans
  end
end
