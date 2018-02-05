require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each { |style, langs|
    langs.each { |langName, attributes|
      new_hash[langName] = attributes
      binding.pry
      new_hash[langName].include?(:style) ? new_hash[langName][:style].push(style) : new_hash[langName][:style] = [style]
      binding.pry
    }
  }
  new_hash
end
