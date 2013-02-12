# OmniAuth Flattr

This is the official strategy to authenticate with [Flattr](http://flattr.com). For you to use it you need to create a [Flattr Application](https://flattr.com/apps) and have a `key` and `secret` available.

## Basic usage

```ruby
use OmniAuth::Builder do
  provider :flattr, ENV['FLATTR_KEY'], ENV['FLATTR_SECRET']
end
```

### Scopes

Flattr API lets you set scopes to provide granular access to different types of data:

```ruby
use OmniAuth::Builder do
  provider :flattr  ENV['FLATTR_KEY']  ENV['FLATTR_SECRET']  scope: "flattr email thing"
end
```

More info on [Scopes](http://developers.flattr.net/api/#scopes).

## License

Copyright (c) 2012 Simon Gate

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
