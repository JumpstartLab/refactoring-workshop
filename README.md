# Ancient City Ruby 2014

Refactoring Workshop

* Refactoring Under Green
* Lockdown Tests
* Extract Class
* Controller Refactoring

## Setup

Clone this repository, and then install the dependencies with:

```plain
$ bundle install
```

## Refactoring Under Green

We will use the nursery rhyme _The House That Jack Built_ to practice taking
tiny steps and refactoring under green.

```plain
$ cd house
```

Run the tests with the following command:

```plain
$ ruby test/house_test.rb
```

## Lockdown Tests

We will use the classic song _99 Bottles of Beer on the Wall_ to practice
writing lockdown tests.

```plain
$ cd bottles
```

Run the application with:

```plain
$ rackup
```

Then visit the app in your browser at [localhost:9292](http://localhost:9292).

## Extract Class

We need to move the logic out of the beer song controller so that we can
implement the `bin/bottles` command-line application.

```plain
$ bin/bottles
```

## Controller Refactoring

See the [Tag Cloud Refactoring](http://tutorials.jumpstartlab.com/projects/tag_cloud_refactoring.html) tutorial.

