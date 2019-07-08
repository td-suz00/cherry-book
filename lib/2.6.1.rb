def greeting(country)
  return "countryを入力してください" if country.nil?

  if country == "japan"
    puts "こんにちは"
  elsif country == "us"
    puts "Hello"
  elsif country == "italy"
    puts "ciao"
  else
    puts "???"
  end

end

greeting(nil)
greeting("japan")
greeting()