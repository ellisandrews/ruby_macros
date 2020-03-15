# ruby_macros

#### Overview
This is a lightweight repo demonstrating how ruby macros (i.e. class methods that dynamically generate instance methods) work! Macros pop up frequently in ruby applications. A couple of common examples are: 
* Built-in instance attribute reader/writer methods (`attr_reader`, `attr_writer` and `attr_accessor`)
* [ActiveRecord Associations](https://guides.rubyonrails.org/association_basics.html) (the Rails model layer).

It's useful to understand how they work, and acknowledge that they're not magic, they're plain old ruby! For a more detailed explanation, check out [my blog post]() (coming soon!) on the subject.

#### Setup
```
$ bundle install
```

#### Execution
```
$ ruby sandbox.rb
```
Executing this script will dump you in a `pry` session, where you'll have access to play with the models defined in the `models/` directory and their associated custom macros!

#### Extending
Feel free to create your own macros, and load them into the `CustomMacroBase` class from which the models inhereit!
