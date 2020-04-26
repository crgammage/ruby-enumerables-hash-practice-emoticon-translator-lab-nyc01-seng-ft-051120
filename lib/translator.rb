require "yaml"
require 'pry'
def load_library(file)
  library = YAML.load_file(file)
  # new_hash = {
  #   'get_emoticon' => {}, 'get_meaning' => {}
  # }
  emoticons = {}
  library.each do |feeling, value|
    emoticons[feeling] = {}
    emoticons[feeling][:japanese] = value[1]
    emoticons[feeling][:english] = value[0]
  end
  # emoticons.each {|meaning, emoticons|
  # new_hash['get_emoticon'][emoticons[0]] = emoticons[1]
  # new_hash['get_meaning'][emoticons[1]] = meaning}
  # new_hash
  emoticons
end

# def get_japanese_emoticon(file, emoticon)
#   # emoticons = load_library(file)
#   # load_library(file)
# emoticons = library_load(file)
#   # japanese_emoticon = load_library(file)["get_emoticon"][emoticon]
# if emoticons[feeling][:english].find(emoticon)
#     return emoticons[feeling][:japanese]
#   end
#   binding.pry
#   # else
#   #   returns "That is not a known emoticon."
#   # end
# end

def get_english_meaning(file, emoticon)
  emoticons = load_library(file)
  emoticons.keys.find do |key|
    if emoticon == emoticons[key][:japanese]
      binding.pry
      return emoticons[key]
    else
      return "That is not an emoticon."

    end
  end
  #binding.pry
  #if emoticon == emoticons[feeling][:japanese]
  #  return emoticons[feeling]
  #end

end
