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

#プロフィールのデータを検索する
profiles = [
  {name: "静岡 太郎", age: 34, address: "静岡県"},
  {name: "名古屋 次郎", age: 25, address: "愛知県"},
  {name: "大津 三郎", age: 19, address: "滋賀県"}
]
def search(profiles, key, query)
  profiles.each do |profile|
    return profile if query =~ profile[key]
  end
end
p search(profiles, :name, /静岡 太郎/)
