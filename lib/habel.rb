require 'haml'
require 'xbel'

module Habel
  INTRO   = '<?xml version="1.0" encoding="utf-8" ?>' + $/
  DOCTYPE = '<!DOCTYPE xbel PUBLIC "+//IDN python.org//DTD XML Bookmark Exchange Language 1.0//EN//XML" "http://www.python.org/topics/xml/dtds/xbel-1.0.dtd">' + $/
  OPTIONS = { :attr_wrapper => '"', :ugly => true, :autoclose => [], :preserve => [] }

  def open(path)
    engine = Haml::Engine.new File.read(path), OPTIONS
    xml = engine.render

    unless xml.include? 'DOCTYPE xbel'
      offset = xml.index(INTRO) + INTRO.length
      xml.insert offset, DOCTYPE
    end

    XBEL.parse xml
  end
  module_function :open

end
