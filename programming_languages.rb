require "pry"
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, code_languages|
    languages[style].each do |language, type|
      languages[style][language].each do |type_style, result|
        array_of_styles = []
        array_of_styles.push(style)
        new_hash[language] = {}
        new_hash[language][type_style] = result
        new_hash[language][:style] = array_of_styles
      end
    end
  end
   new_hash[:javascript][:style].push(:oo)
   new_hash
end
reformat_languages(languages)
