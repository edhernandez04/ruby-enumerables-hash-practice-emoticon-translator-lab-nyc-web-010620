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

def get_japanese_emoticon(emoticon_file, emoticon)
  emoticon_lib = load_library(emoticon_file)
  japanese_emoticon = emoticon_lib['get_emoticon'][emoticon]
  japanese_emoticon ? japanese_emoticon : 'Sorry, that emoticon was not found'
  # code goes here
end

def get_english_meaning
  # code goes here
end
