require "pry"

def dictionary
  hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  hash
end

def word_substituter(str, hash = dictionary)
  newStr = ""
  arr = str.split(" ")
  #binding.pry
  arr.each do |x|
      if hash.has_key?(x)
        newStr += hash[x] + " "
      else
        newStr += x + " "
      end
  end
  newStr.chomp(" ")
end

tweet = "Hey guys, can anyone teach me how to be cool?"
#word_substituter(tweet)

def bulk_tweet_shortener(arr, method = word_substituter)
  arr.each do |str|
    puts method(str)
  end

  # x = method(str)
  # binding.pry
  # puts x
end

#bulk_tweet_shortener(tweet)
