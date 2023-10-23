require "fileutils"

# ファイルの情報を表示
# https://qiita.com/niwasawa/items/67b38948975587669719
def stat(path)
  s = File::Stat.new(path)
  begin
    puts "btime: #{s.birthtime} (ファイル作成日時)"
  rescue NotImplementedError => e
    puts e.inspect
  end
  puts "mtime: #{s.mtime} (最終更新日時 modify time)"
  puts "ctime: #{s.ctime} (最終状態変更日時 change time)"
  puts "atime: #{s.atime} (最終アクセス日時 access time)"
end

def timestamp(filename, path)
  # if File.extname(filename) == ".c"
  #   ruby_filename = File.basename(filename, ".c") + ".rb"
  #
  #   output = open(path + "/" + ruby_filename, "w")
  #
  #   open(path + "/" + filename, "r") do |f|
  #     f.each_line do |line|
  #       next if line[0] == "#"
  #       next if (line.include? "main") && (line.include? "(")
  #       line = line.gsub("  ", "")
  #       line = line.gsub("//", "#")
  #       line = line.gsub("return 0;\n", "")
  #       line = line.gsub(";", "")
  #       line = line.gsub("printf", "puts ")
  #       line = line.gsub("(", "")
  #       line = line.gsub(")", "")
  #       line = line.gsub("{", "")
  #       line = line.gsub("}", "")
  #       line = line.gsub("\\n", "")
  #       line = line.gsub("else if", "elsif")
  #       line = line.gsub(" else", "else")
  #       line = line.gsub("case", "when")
  #       line = line.gsub("switch", "case")
  #       line = line.gsub("int ", "")
  #       line = line.gsub("float ", "")
  #       line = line.gsub("double ", "")
  #       # line = line.gsub(/^\/(\**)/, ruby_comment)
  #       # line = line.gsub(/(\**)\//, ruby_comment)
  #       output << line
  #     end
  #   end
  # end
  filenumber = File.basename(filename, ".webp").tr("IMG_", "").to_i

  h, m = filenumber.divmod(3600)
  h += 8
  m, s = m.divmod(60)

  day1 = Time.new(2023, 8, 5, h, m, s, "+09:00")
  day2 = Time.new(2023, 8, 6, h, m, s, "+09:00")

  if filenumber < 6890
    File.utime(day1, day1, path + "/" + filename)
  else
    File.utime(day2, day2, path + "/" + filename)
  end
end

path = File.dirname ARGV[0]
if File.directory?(ARGV[0])
  path = ARGV[0]
  Dir.each_child(ARGV[0]) do |filename|
    timestamp(filename, path)
  end
elsif File.file?(ARGV[0])
  filename = File.basename ARGV[0]
  timestamp(filename, path)
end
