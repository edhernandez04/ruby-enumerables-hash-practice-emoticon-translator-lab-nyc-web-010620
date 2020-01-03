# require modules here
require "YAML"
require "pry"

def load_library(emoticon_file)
  emoticons = YAML.load_file('emoticons.yml')

  emoticon_lib = {
    'get meaning' => {}
    'get emoticon' => {}
  }

  emoticons.each do |meaning, value|
    english = value[0]
    japanese = value[1]
    emoticon_lib['get meaning'][japanese] = meaning
    emoticon_lib['get emoticon'][english] = japanese
  end
  emoticon_lib
  # code goes here
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
