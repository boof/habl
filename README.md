# habel

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

    $ gem install habel

    $ irb
    >> require 'habel'
    >> xbel = Habel::open 'bookmarks.xbel.haml'

See http://github.com/boof/xbel and http://en.wikipedia.org/wiki/XBEL for more
information about XBEL and http://haml-lang.com/ for HAML.

## Note on Patches/Pull Requests
 
* Fork habel.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a future version
  unintentionally.
* Commit, do not mess with rakefile, version, or history (if you want to have
  your own version, that is fine but bump version in a commit by itself I can
  ignore when I pull).
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2010 Florian Aßmann. See LICENSE for details.
