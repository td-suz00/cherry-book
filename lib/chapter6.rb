# text = <<TEXT
# I love Ruby.
# Python is a great language.
# Java and JavaScript are diffrent.
# TEXT

# puts text.scan(/[A-Z][A-Za-z]+/)

# text2 = <<TEXT
# 私の郵便番号は1234567です。
# 僕の住所は6770056 兵庫県西脇市板並町1234だよ。
# TEXT

# puts text2.gsub(/(\d{3})(\d{4})/, '\1-\2')

# text = <<-TEXT
# 名前：伊藤淳一
# 電話：03(1234)5678
# 電話：090-1234-5678
# 電話：0795(12)3456
# 電話：04992-1-2345
# 住所：兵庫県西脇市板波町1-2-3
# TEXT
# puts text.scan /\d{2,5}[-()]\d{1,4}[-)]\d{4}/

# text = <<-TEXT
# クープバゲットのパンは美味しかった。
# 今日はクープ バゲットさんに行きました。
# クープ　バゲットのパンは最高。
# ジャムおじさんのパン、ジャムが入ってた。
# また行きたいです。クープ・バゲット。
# クープ・バケットのパン、売り切れだった（><）
# TEXT

# puts text.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)

# text = <<-TEXT
# <select name="game_console">
# <option value="none"></option>
# <option value="wii_u" selected>Wii U</option>
# <option value="ps4">プレステ4</option>
# <option value="gb">ゲームボーイ</option>
# </select>
# TEXT

# puts text.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1, \2')

# text = <<-TEXT
# def hello(name)
#   puts "Hello!, \#{name}!"
# end

# hello('Alice')
          
# hello('Bob')
	
# hello('Carol')
# TEXT

# puts text.gsub(/^[ \t]+$/, "")

# text = "私の誕生日は1987年5月26日です"

# if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
#   puts "#{year}/#{month}/#{day}"
# end

# text = "郵便番号は123-4567です。"
# puts text.scan(/\d{3}-\d{4}/)
# puts text[/\d{3}-\d{4}/]
# puts text.slice!(/\d{3}-\d{4}/)
# puts text

text = "誕生日は1987年5月26日です。"
# puts text.gsub(/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, '')
text =~ /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/
puts Regexp.last_match