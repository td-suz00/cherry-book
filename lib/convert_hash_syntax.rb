def convert_hash_syntax(old_syntax)
  old_syntax.gsub(/:(\w+)\s*=>\s*/, '\1: ')
end

old_syntax = <<~TEXT
      {
        :name => 'Alice',
        :age=>20,
        :gender   =>  :female
      }
    TEXT

puts convert_hash_syntax(old_syntax)