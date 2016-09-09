![Logo](http://dsgriffin.github.io/images/logos/rgraph-rails.png)

[![Build Status](https://travis-ci.org/dsgriffin/rgraph-rails.svg?branch=master)](https://travis-ci.org/dsgriffin/rgraph-rails)
[![Gem Version](https://badge.fury.io/rb/rgraph-rails.svg)](https://badge.fury.io/rb/rgraph-rails)

Use the [rgraph](http://www.rgraph.net/) chart/graph library with the Rails asset pipeline.

## Installation

Include the gem in your application's Gemfile:

```ruby
gem 'rgraph-rails', '~> 1.0.6'
```

And then execute:

    $ bundle

## Usage

In your `application.js`, include the core RGraph file

```ruby
//= require RGraph.common.core
```

Next, include one or more graph types - depending on which one's you'd like to use. For example

```ruby
//= require RGraph.hprogress.js
```
Then you'd add the Graphical data to your `example.coffee`/`example.js`

```coffeescript
$(window).load ->
  hprogress = new RGraph.HProgress({
    id: 'cvs',
    min: 50,
    max: 100,
    value: 85
  }).draw()
```

And finally the canvas that holds the graph in your `example.html.haml`/`example.html.erb`

```haml
%canvas#cvs{:height => "100", :width => "600"}
  [No canvas support]
```

For detailed documentation concerning the types of graphs/charts and all other available options, [please see the official docs](http://www.rgraph.net/docs/charts-index.html).


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Deployment

Automatically on tagged release to master. Reading: https://docs.travis-ci.com/user/deployment/rubygems/

## Issues

If your query concerns the library itself, see the [official support forum](http://www.rgraph.net/support). If it is about this gem in particular, [raise an issue](https://github.com/dsgriffin/rgraph-rails/issues).

## Contributing

Bug reports and pull requests are welcome. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](https://github.com/dsgriffin/rgraph-rails/blob/master/CODE_OF_CONDUCT.md) code of conduct.

## License

See `license.txt`

