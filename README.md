# Habl

Shorten your XBEL by writing markup haiku.

This library simply renders markup haikus to xml before parsing it with XBEL.

## Example

    !!! XML utf-8

    %xbel(version="1.0" id="de")
      %title Deutsche Navigation

      %folder
        %title monkey-patch.me

        %bookmark(href="http://www.monkey-patch.me")
          %title monkey-patch.me
    

## Install / Usage

    $ gem install habl

This library depends on [xbel.gem](http://rubygems.org/gems/xbel) and
[haml.gem](http://rubygems.org/gems/haml).

    $ irb
    >> require 'habl'
    >> xbel = Habl.open 'bookmarks.xbel.haml'

Learn more about [Haml](http://haml-lang.com/) and
[XML Bookmark Exchange Language](http://pyxml.sourceforge.net/topics/xbel/).

## Note on Patches/Pull Requests
 
* Fork Habl.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a future version
  unintentionally.
* Commit, do not mess with rakefile, version, or history (if you want to have
  your own version, that is fine but bump version in a commit by itself I can
  ignore when I pull).
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2010 Florian Aßmann. See LICENSE for details.
