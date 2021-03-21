# for文では、予め指定したオブジェクトから順に値をとりだしながら繰り返し処理
for i in 1..30
  if i % 15 == 0
    puts "FizzBuzz"
  elsif i % 5 == 0
    puts "Buzz"
  elsif i % 3 == 0
    puts "Fizz"
  else
    puts i 
  end
end

# uptoメソッドは、変数に「対象のオブジェクトがもつ数値」から「max」を順に代入1回繰り返す毎に1ずつ数値は増加している
1.upto(30) do |i|
  if i % 15 == 0
    puts "FizzBuzz"
  elsif i % 5 == 0
    puts "Buzz"
  elsif i % 3 == 0
    puts "Fizz"
  else
    puts i 
  end
end

# eachメソッドは、オブジェクトに含まれている要素を順に変数に格納され、繰り返し処理される
(1..30).each do |i|
  if i % 15 == 0
    puts "FizzBuzz"
  elsif i % 5 == 0
    puts "Buzz"
  elsif i % 3 == 0
    puts "Fizz"
  else
    puts i 
  end
end

# timesメソッドは、変数0から「対象のオブジェクトがもつ数値-1」を順に代入しながら{}までの処理を実行
1..31.times do |i|
  if i % 15 == 0
    puts "FizzBuzz"
  elsif i % 5 == 0
    puts "Buzz"
  elsif i % 3 == 0
    puts "Fizz"
  else
    puts i 
  end
end

# メソッド作成する
num_max = 30
(1..num_max).each do |num|
  def fizzBuzz(num)
    if num % 15 == 0
      puts "FizzBuzz"      
    elsif num % 3 == 0
      puts "Fizz"
    elsif num % 5 == 0
      puts "Buzz"
    else
      puts num
    end
  end  
  puts fizzBuzz(num) 
end

1.upto(30) do |i|
  if (i % 15).zero? #自身がゼロの時trueを返す
    puts 'Fizz Buzz'
  elsif (i % 3).zero?
    puts 'Fizz'
  elsif (i % 5).zero?
    puts 'Buzz'
  else
    puts i
  end
end