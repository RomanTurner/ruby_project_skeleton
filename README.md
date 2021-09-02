# Skeleton Structure

+-- bin
|   +-- run
+-- config
|   +-- environment.rb
+-- Lib
|
+-- Spec

## Commands 

rake -T *shows all rake tasks*

rake console *start a Pry session*

ruby bin/run *runs the program*

bundle exec rspec *runs test suite*

## Details

**Bin**

Sets the Environment 
* the #!/usr/bin/env ruby 

Requires and runs the config / environment

**Config**

The environment.rb file is where we require all of our files to tie it all together. 

**Lib** 

Contains all classes

**Spec**

RSpec

