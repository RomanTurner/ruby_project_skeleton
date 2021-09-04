require "fileutils"
require "lucky_case"
require "erb"

class Project < Thor
no_tasks do
  def test_template(name)
    model = File.read(File.expand_path("./lib/templates/test.erb"))
    ERB.new(model, 0, nil, name).result(binding)
  end

  def model_template(name)
     model = File.read(File.expand_path("./lib/templates/model.erb"))
     ERB.new(model, 0, nil, name).result(binding)
  end
end

  desc "generate [NAME]", "create a class and test file"

  def generate(name)
    file = "lib/#{name}.rb"
    FileUtils.touch file
    File.write(file, model_template(name))
    generate_test(name)
    say("......#{file} 🏗  created", :green)
  end

  map "g" => "generate"
  desc "generate_test [NAME]", "create a [NAME]_spec file"

  def generate_test(name)
    file = "spec/#{name}_spec.rb"
    FileUtils.touch file
    File.write(file, test_template(name))
    say("......#{file} 🏗  created", :green)
  end

  map "g_test" => "generate_test"
  desc "destroy [NAME]", "destroy a class and test file"

  def destroy(name)
    ["lib/#{name}.rb", "spec/#{name}_spec.rb"].each do |file|
      FileUtils.remove_file file
      say("......#{file} 💥 destroyed.", :red)
    end
  end

  map "d" => "destroy"
end
