require 'v8'

module Asciimo
  VERSION = "0.2.0"
  HOME = File.expand_path(File.join(File.dirname(__FILE__), "..", "ext", "asciimo"))
  LIB = File.join(HOME, "lib")
  FONTS = File.join(HOME, "fonts")
  
  def text(font, text, color = nil)
    cxt = V8::Context.new
    asciimo = cxt.scope
    asciimo['window'] = asciimo
    asciimo['$'] = JQuery.new
    cxt.load("#{LIB}/asciimo.js")
    cxt.load("#{LIB}/colors.js")

    ascii = nil
    asciimo.Figlet.write(text, font, proc {|result| ascii = result})

    return color ? asciimo.stylize(ascii, color) : ascii
  end

  def fonts
    cxt = V8::Context.new
    figlet = cxt['Figlet'] = cxt['Object'].new
    cxt.load("#{LIB}/fonts.js")
    figlet.fontList.to_a
  end

  def colors
    #TODO figure out a way to load this from the JS source.
    [
      'bold',
      'italic',
      'underline',
      'yellow',
      'cyan',
      'white',
      'green',
      'red',
      'grey',
      'blue',
      'magenta',
      'inverse'
    ]
  end

  module_function :text, :colors, :fonts
  
  class JQuery
    def get(file, callback)
      callback.call(File.read File.join(Asciimo::HOME, file))
    end
  end
end

