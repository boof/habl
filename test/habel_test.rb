require 'teststrap'

context "habl" do
  setup do
    dirname = Pathname File.dirname(__FILE__)
    dirname.join 'fixture.xbel.haml'
  end
  asserts("HAML => XBEL") { XBEL === Habl::open(topic) }

  context "XBEL" do
    setup { Habl::open(topic) }
    asserts("title of first folder") { topic.root.folders.first.title }.
      equals "monkey-patch.me"
  end

end
