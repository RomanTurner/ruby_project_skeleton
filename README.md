# Skeleton Structure

```bash
├── bin
│   ├── run
│
├── config
│   ├── environment.rb
│
├── lib
│   ├── app.rb
│
├── spec
│   ├── spec_helper.rb
│   ├── app_spec.rb
│
├── README.md
├── Rakefile
├── Gemfile
├── Gemfile.lock
├── .rspec
└── .gitignore
```

## Commands

**Thor**

The base command is
_thor project:_
To change this change the name of the thor class in the setup.thor file.

-thor project:generate [NAME]-
alias _thor project:g [NAME]_
generate[NAME] will create ruby class file of name in lib/name.rb **&** will create ruby test file of name in spec/name_spec.rb.

-thor project:destroy [NAME]-
alias _thor project:d [NAME]_
destroy[NAME] will destroy ruby class file of name in lib/name.rb **&** will destroy ruby test file of name in spec/name_spec.rb.

**Rake**

rake -T _shows all rake tasks_

rake console _start a Pry session_

ruby bin/run _runs the program_

bundle exec rspec _runs test suite_

## Details

**Bin**

Sets the Environment

- the #!/usr/bin/env ruby

Requires and runs the config / environment

**Config**

The environment.rb file is where we require all of our files to tie it all together.

**Lib**

Contains all classes

**Spec**

RSpec
