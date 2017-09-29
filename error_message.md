NameError: uninitialized constant Dockingstation
	from (irb):1
	from /Users/rorycollins/.rvm/rubies/ruby-2.3.3/bin/irb:11:in <main>



1. It is a name error
2. the file path: /Users/rorycollins/.rvm/rubies/ruby-2.3.3/bin/irb:11
3. line 1 in irb, line 11 in file
4. ruby documentation - You'll see this error when the code refers to a class or module that it can't find, often because the code doesn't include require, which instructs the Ruby file to load the class.
5. we need to define a class Docking_station in order to call it.
