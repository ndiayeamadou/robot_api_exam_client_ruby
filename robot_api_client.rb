require 'rubygems'
require 'httparty'

class Languages
    include HTTParty
    base_uri "http://localhost:3000/"

    def proglanguages
        self.class.get('/programming_languages.json')
    end
end

lang = Languages.new
puts lang.proglanguages
