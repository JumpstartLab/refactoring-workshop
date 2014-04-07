# Refactoring Workshop

* Refactoring Under Green
* Lockdown Tests
* Extract Class
* Controller Refactoring
* OSS Contributions (if time permits)

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

## Refactoring Recipes

We need to move the logic out of the beer song controller so that we can
implement the `bin/bottles` command-line application.

```plain
$ bin/bottles
```

**Refactoring** by Martin Fowler contains a number of step-by-step recipes.

In all the recipes it is critical that you run the tests after each step.

If your tests goes red **stop and back up**. Undo the change, run your tests again to make sure it goes green, and then attempt the change again, or try to find a smaller step that you can take.

### Extracting a Sing Method

In the `GET /` endpoint of the bottles app, there is some code that has to do with generating the song, and some that has to do with providing HTML for the view to render.

You will need to split that logic up so that the song-logic is in a method on its own.

1. Create a new method, and name it for what it does (or returns), not for what the implementation will be.
2. **Copy** (do not cut) the code you want to extract into the new method.
3. Look for local variables in the extracted code.
4. ~~ local variable steps skipped, there are none ~~
5. Replace the extracted code in the source method with a call to the target method.

### Extracting a Song Class

1. Create a new, empty class.
2. Instantiate the new class from within the old class.
3. Move each method that belongs in the target class.
4. Restrict the API by making methods private, if possible.
5. Delete any code that is no longer used.
6. Rename stuff, if you come up with better names.

### Moving a Method

1. Examine all the features that a method uses, and decide if they also need to be moved into the new class.
2. Define an empty method in the target class.
3. **Copy** (do not cut) the body of the old method into the new method. Adjust the method to work in its new home.
4. Replace the body of the source method with a call to the target method.

## Controller Refactoring

See the [Tag Cloud Refactoring](http://tutorials.jumpstartlab.com/projects/tag_cloud_refactoring.html) tutorial.

## OSS Contributions

* [Tracks on GitHub](https://github.com/TracksApp/tracks)
* [Tracks on Code Climate](https://codeclimate.com/github/TracksApp/tracks)

If there is time left at the end of the day, fork and clone the real tracks
repository, and find some improvement that can be made.

