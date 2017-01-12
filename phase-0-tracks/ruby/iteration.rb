5.3

actors = ["H. Ford", "S.C", "M.K", "S.W"]
roles = {"H.F" => "ij", "S.C" => "jb", "M.K" => "bm", "S.W" => "er"}


 actors.each do |x|
 puts x
end

 actors.map! do |x|
  x.split(//)
end

p actors

new = roles.each do |x, y|
 puts "#{x}'s best #{y}"
 roles [x] = "ij2"
end

p new

p "1)"
def delete_a
  array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  array.delete_if do |x|
    x < 5
  end
  array
end
p delete_a


def delete_h
  hash = {a: 0, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6, h: 7, i: 8, j: 9}
  hash.delete_if do |x, y|
    y < 5
  end
  hash
end
p delete_h


p "2)"
def delete
  array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  array.keep_if do |x|
    x > 5
  end
  array
end
p delete

def delete_h
  hash = {a: 0, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6, h: 7, i: 8, j: 9}
  hash.keep_if do |x, y|
    y < 5
  end
  hash
end
p delete_h


p "3)"
def delete
  array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  array.select! do |x|
    x < 5
  end
  array
end
p delete

def delete_h
  hash = {a: 0, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6, h: 7, i: 8, j: 9}
  hash.select! do |x, y|
    y < 5
  end
  hash
end
p delete_h

p "4)"
def delete
  array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  array.reject! do |x|
    x < 5
  end
  array
end
p delete

def delete_h
  hash = {a: 0, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6, h: 7, i: 8, j: 9}
  hash.reject! do |x, y|
    y < 5
  end
  hash
end
p delete_h