a = 
<<TEXT
これはヒアドキュメントです。
複数行に渡る長い文字列を作成するのに便利です。
TEXT

puts a

def some_method(name)
  <<~TEXT
  ようこそ、#{name}さん
  これはヒアドキュメントです。
  <<-を使うと複数行に渡る長い文字列を作成するのに便利です。
  TEXT
end

puts some_method("daisuke")