require "fileutils"
require "lucky_case"

class Project < Thor
  def test_template(name)
    "require'#{name}'\n describe #{LuckyCase.pascal_case(name)} do\n  end\nend"
  end

  def model_template(name)
    "class #{LuckyCase.pascal_case(name)} \nend"
  end

  desc "generate [NAME]", "create a class and test file"

  def generate(name)
    file = "lib/#{name}.rb"
    FileUtils.touch file
    File.write(file, model_template(name))
    g_test(name)
    say("......#{file} 🏗  created", :green)
  end

  desc "g_test [NAME]", "create a [NAME]_spec file"

  def g_test(name)
    file = "spec/#{name}_spec.rb"
    FileUtils.touch file
    File.write(file, test_template(name))
    say("......#{file} 🏗  created", :green)
  end

  desc "destroy [NAME]", "destroy a class and test file"

  def destroy(name)
    ["lib/#{name}.rb", "spec/#{name}_spec.rb"].each do |file|
      FileUtils.remove_file file
      say("......#{file} 💥 destroyed.", :red)
    end
  end
end
