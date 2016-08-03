# Roman Numerals
a roman numerals demonstration for Ladies of Code

##Getting started

You can clone down the repo with:

```
git clone git@github.com:tsetsova/roman_numerals.git
```

Navigate to the roman_numerals directory via your terminal and then run:

```
bundle install
```

If you don't have bundler, you can install it with the following command:

```
gem install bundler
```

Bundle will install the gems listed in the Gemfile of the roman_numerals project.

* [RSpec](http://rspec.info/) is a testing framework for Ruby.

* [Guard](https://github.com/guard/guard-rspec) watches your test and program files, relaunching your tests automatically if something has been modified

* [Rantly](https://github.com/hayeah/rantly) is a testing library for Ruby, based on QuickCheck. It enables you to property test with randomly generated data. 

* [Pry](http://pryrepl.org/) is an irb alternative which has a lot of helpful extra features and debugging tools.

* [Rake](http://rake.rubyforge.org/) is a useful Ruby tool for creating automation tasks that can be run in the command line

## How to use

Once everything is installed, you can start writing your first test. 

```
describe RomanNumerals do

  it "----- description of your test-----" do
    expect(-------something-----).to eq --------something_else---------
  end
end
```

Then run:

```
rspec
```

But wait, now you have **Guard** installed. You don't have to manually run the tests anymore! Make sure you've navigated in your command line to the roman_numerals directory and simply type:

```
guard
```

Now every time you save either a test or a program file, guard will rerun your tests. 

This works best if you can see your tests underneath your code in the same window. You can achieve this if you use Vim or Emacs for example. But there's also packages for Atom and Sublime. I used a package called **Terminal-Plus** in Atom. 

The test is going to fail for several reasons. 

  * there's no class called RomanNumerals
  * there's no code implementing our expectation

After you have a passing test, write another test. Don't forget to refactor after you've reached a **green** stage. Never refactor in **red**! This is because tests help you make sure your assumptions about the code are correct. If you refactor in red you don't know how many things your changes could potentially be breaking. 

One thing I couldn't get into during the demonstration was **committing to GitHub**. It fits really well with the red-green-refactor rhythm. It's typical to commit after every passing test and also after every refactor. Only commit when your tests are green and there are no pending tests :)

This way if something inexplicably breaks, you can always revert to a green state.

###Property Testing 

If you want to try our property testing, first you need to require the relevant library code:

```
require rantly/rspec_extenions
```

Then you can write your first property test. Here's an example structure:

```
property_of {
  Rantly { -------generate_random_data_________ }
}.check { 
   expect(-------something-----).to eq --------something_else---------
}
```

Or check out the [Rantly documentation](https://github.com/hayeah/rantly).

###Branches
This project has 3 branches. 
* One is a simple scaffold to get you started
* final-code has the code I live coded during the Ladies of Code TDD event
* final-code-with-property-tests has the same code but with the property tests added 


Feel free to modify the code, break it, and try new things! If you get stuck you can definitely take a peak at the solutions. 

There's also a [blog post](http://tsetsova.github.io/events/2016/08/01/tdd-at-ladies-of-code.html) I wrote about this learning experience. I hope you find it useful :)

If you have any questions you can always find me on [Twitter](@InaTsetsova).

