require 'v8'

module Asciimo
  VERSION = "0.2.0"
  HOME = File.join(File.dirname(__FILE__), "..", "ext", "asciimo")
  LIB = File.join(HOME, "lib")
  FONTS = File.join(HOME, "fonts")
  
  def text(font_name, text, color = nil)
    cxt = V8::Context.new
    asciimo = cxt.scope
    cxt.load("#{LIB}/asciimo.js")
    cxt.load("#{LIB}/colors.js")
    font = File.read("#{FONTS}/#{font_name}")
    asciimo.loadFont(font)
    art = asciimo.createLargeText(text)
    return color ? asciimo.stylize(art, color) : art
  end

  def fonts
    cxt = V8::Context.new
    cxt.load("#{LIB}/fonts.js")
    cxt.scope.asciimoFonts.to_a
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
end

