require 'open3'

class Helper
  attr_reader :input_path, :solve_path

  def self.instance
    @instance ||= new
  end

  private_class_method :new

  def initialize
    year = ENV.fetch('AOC_YEAR')
    day = ENV.fetch('AOC_DAY')
    part = ENV.fetch('AOC_PART')

    day_pretty = "day_#{format '%02d', day}"
    part_pretty = "part_#{part}"

    self.input_path = "./#{year}/#{day_pretty}/input"
    self.solve_path = "./#{year}/#{day_pretty}/#{part_pretty}/solve"
  end

  private

  attr_writer :input_path, :solve_path
end

def input
  File.read(Helper.instance.input_path)
end

def solve(input)
  stdout, _status = Open3.capture2(Helper.instance.solve_path, stdin_data: input)
  stdout.chomp
end
