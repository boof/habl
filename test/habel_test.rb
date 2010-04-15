require 'teststrap'

context "habel" do
  setup do
    dirname = Pathname File.dirname(__FILE__)
    dirname.join 'fixture.xbel.haml'
  end
  asserts("HAML => XBEL") { XBEL === Habel::open(topic) }

  context "XBEL" do
    setup { Habel::open(topic) }
    asserts("title of first folder") { topic.root.folders.first.title }.
      equals "monkey-patch.me"
  end

end
