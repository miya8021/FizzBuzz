# 以下の出力結果を得られるプログラム
# foo
# bar
# baz

puts "foo\nbar\nbaz\n" #\nで改行する

a = %w[foo bar baz]
puts a.join("\n") #配列を作成し、joinで改行を入力する

# 1から100までの数値を合計する
i = 1
sum = 0
while i <= 100
 sum += i
 i += 1
end
print sum

puts (1..100).reduce(&:+) # Rubyのイテレータメソッドinject(reduce)

#eachメソッドでくり返し処理する
sum = 0
(1..100).each { |i| sum += i }
puts sum
