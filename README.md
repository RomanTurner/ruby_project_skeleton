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
│   ├── templates
│        ├── model.erb
│        ├── test.erb
│   ├── tasks
│        ├── setup.thor
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

_thor suffix[optional argument]_

| Thor prefix |           suffix            |  alias | Describe                                                          |
| -----------:| :-------------------------- | -----: | :---------------------------------------------------------------- |
| thor        |   project:generate[NAME]    |      g | # Generates a Ruby object and test file [NAME]                    |
| thor        |    project:destroy[NAME]    |      d | # Destroys Ruby object and test file available [NAME]             |
| thor        | project:generate_test[NAME] | g_test | # Generates a Rspec test file [NAME]                              |
| thor        |       help [COMMAND]        |    n/a | # Describe available commands or one specific command             |
| thor        |        install NAME         |    n/a | # Install an optionally named Thor file into your system commands |
| thor        |          installed          |    n/a | # List the installed Thor modules and commands                    |
| thor        |        list [SEARCH]        |    n/a | # List the available thor commands (--substring means .\*SEARCH)  |
| thor        |       uninstall NAME        |    n/a | # Uninstall a named Thor module                                   |
| thor        |         update NAME         |    n/a | # Update a Thor file from its original location                   |
| thor        |           version           |    n/a | # Show Thor version                                               |

_additional command line tools_

| prefix |   suffix   | Describe                     |
| ------:| :--------  | :--------------------------- |
| rake   |     -T     | # displays all rake commands |
| rake   |  console   | # Starts a Pry session       |
| ruby   |  bin/run   | # Runs the program           |
| bundle | exec rspec | # runs entire test suite     |

## Details

**Bin**

- Sets the Environment

- the #!/usr/bin/env ruby

- Requires and runs the config / environment

**Config**

- The environment.rb file is where we require all of our files to tie it all together.

**Lib**

- Contains all classes

**Spec**

- RSpec
