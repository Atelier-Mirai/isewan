# 10000以下の自然数 n において、[√n] が n の約数となるものの個数を求めよ。

# count = 0
# (1..10_0000_0000).each do |n|
#   if n % Math.sqrt(n).floor == 0
#     count += 1
#   end
# end
#
# puts count

# サイコロ5個を振って、目の和が7の倍数になる確率を求めよ。
count = 0
[1, 2, 3, 4, 5, 6].each do |dice1|
  [1, 2, 3, 4, 5, 6].each do |dice2|
    [1, 2, 3, 4, 5, 6].each do |dice3|
      [1, 2, 3, 4, 5, 6].each do |dice4|
        [1, 2, 3, 4, 5, 6].each do |dice5|
          if [dice1, dice2, dice3, dice4, dice5].sum % 7 == 0
            count += 1
          end
        end
      end
    end
  end
end

puts count
puts (count / 6**5.to_f)
puts (count.to_r / 6**5.to_r)
