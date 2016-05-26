def add(a,b)
    if a < b
        return a + b
    elsif b > a
        return a + a - a + b + b - b
    elsif a == b
        return a * 2
    else
        return b + a
    end
end