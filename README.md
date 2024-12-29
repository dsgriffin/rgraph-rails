# rgraph-rails 📊

[![Gem Version](https://badge.fury.io/rb/rgraph-rails.svg)](https://badge.fury.io/rb/rgraph-rails)
![](https://img.shields.io/badge/rgraph-6.14-red.svg)

Use the [rgraph](http://www.rgraph.net/) chart/graph library with the Rails asset pipeline.

## Installation

Include the gem in your application's Gemfile:

```ruby
gem 'rgraph-rails', '~> 6.14'
```

And then execute:

```ruby
$ bundle
```

## Usage

In your `application.js`, include the core RGraph file

```ruby
//= require RGraph.common.core
```

Just below that, include one or more graph types you'd like to use. For example:

```ruby
//= require RGraph.hprogress.js
```

Then add a simple graph

```coffeescript
// example.coffee

$(window).load ->
  hprogress = new RGraph.HProgress({
    id: 'cvs',
    min: 50,
    max: 100,
    value: 85
  }).draw()
```

And finally the canvas that will contain the graph

```haml
# example.html.haml

%canvas#cvs{:height => "100", :width => "600"}
  [No canvas support]
```

For detailed documentation concerning the types of graphs/charts and all other available options, [please see the official docs](http://www.rgraph.net/docs/charts-index.html).

## Run locally

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Versioning

rgraph itself doesn't use semantic versioning (and therefore neither does this gem; it keeps the same version as the library so that it's less confusing) - you can find out about breaking changes by release on the [Backwards Compatibility section on the official site](http://www.rgraph.net/docs/backwards-compatibility.html).

## Contributing

If you've found a bug or have an idea, feel free to open an Issue. If you've got a fix or feature ready, open a PR. Thanks!

## License

MIT
