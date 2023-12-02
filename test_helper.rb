require 'open3'
require 'minitest/reporters'

Minitest::Reporters.use!

def input
  test_path = caller.first.split(':').first
  year, day = test_path.split('/').slice(-4..-2)
  input_path = "#{year}/#{day}/input"
  File.read(input_path)
end

def solve(input)
  test_path = caller.first.split(':').first
  year, day, part = test_path.split('/').slice(-4..-2)
  solve_path = "#{year}/#{day}/#{part}/solve"
  stdout, _status = Open3.capture2(solve_path, stdin_data: input)
  stdout.chomp
end
