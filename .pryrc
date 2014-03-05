# better console
Pry.config.prompt = proc do |obj, level, _|
  prompt = "\e[1;30m"
  prompt << "#{RUBY_VERSION}"
  prompt << "@#{Rails.version}" if defined?(Rails)
  "#{prompt} (#{obj})>\e[0m "
end

# some colors to exceptions
Pry.config.exception_handler =  proc do |output, exception, _|
  output.puts "\e[31m#{exception.class}: #{exception.message}"
  output.puts "from #{exception.backtrace.first}\e[0m"
end

# awesome print
require "awesome_print"
AwesomePrint.pry!
