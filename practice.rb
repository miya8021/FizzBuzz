#余り値を求める
n = 5
m = 13
puts m.remainder(n) 
# remainderメソッドにおける余りを求める計算において、割る数の符号は、計算結果には関係ない
# 3

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

# 一行に複数要素存在する場合
# 標準入力
# Tokyo Osaka Kyoto

line = gets.split(' ')
p line

# 出力結果
# ["Tokyo", "Osaka", "Kyoto"]

# 一行に複数要素存在する場合(数値)
# 標準入力
# 1 2 3

line = gets.split(' ').map(&:to_i)
p line

# 出力結果
# ["1", "2", "3"](文字列として表示される為、.map(&:to_i)を追加し数値で出力)

# 特定の文字を削除（文字列中の特定の文字を削除）
string = "hello"
p string.delete("l")
#出力結果 "heo"





#複数行に複数要素が存在する場合の受け取り方
# 標準入力
# Tokyo Osaka Kyoto
# Japan USA China

line = readlines # 複数行を「配列」としてよみとる
len = line.length #配列の要素数を調べる

i = 0 #変数iに0を代入
while i < len #条件式。変数iは、lenより小さいのでくり返しを実行
    line[i] = line[i].chomp.split(' ')
    i += 1
end
p line

# 出力結果
# [["Tokyo", "Osaka", "Kyoto"], ["Japan", "USA", "China"]]

#簡素化
lines = []
while line = gets # 標準入力の値を全て取得するまで繰り返される
  lines << line.chomp.split(' ')
end
p lines

#さらに簡素化
lines = readlines(chomp: true).map { |line| line.split(' ') }
p lines

# 標準入力とループ処理
count = gets.to_i
for i in 1..count
  line = gets
  puts line
end

# 取得対象のデータ数(行数)を表す整数
num = gets.to_i
# 2行目以降に取得対象のデータを変数arrayに配列として取り組む場合
array = []
while s = gets
  array << s.sub(/\R/,"")
end
p array

# 標準入力
# 1 2 3
# 2 3 4 5 6
# 3 4 5 6 7
# 1行目
p gets.split.map(&:to_i)

# 2行目以降読み込み
array_of_input = []
while s = gets
  array_of_input.push(s.split.map(&:to_i))
end
p array_of_input

#出力結果
# [1, 2, 3]
# [[2, 3, 4, 5, 6], [3, 4, 5, 6, 7]]

# 入力例
# 3
# Tanaka 18
# Sato 50
# Suzuki 120
n = gets.to_i

for i in 1..n
    s_a = gets.split(' ')
    s = s_a[0]
    a = s_a.map(&:to_i)#文字列を整数へ変換
    a_1 = a[1]
    puts "#{s} #{(a_1+1)}"
end

# 出力例
# Tanaka 19
# Sato 51
# Suzuki 121
