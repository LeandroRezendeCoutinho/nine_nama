# frozen_string_literal: true

class FileParser
  def initialize(file)
    @file = file
  end

  def self.call(file)
    new(file).call
  end

  def call
    split_in_lines(decode_file).map do |line|
      split_columns(line)
    end
  end

  private

  def decode_file
    @file.force_encoding('utf-8').encode
  end

  def split_in_lines(file)
    file.split(/\n/).drop(1)
  end

  def split_columns(line)
    line.split(/\t/)
  end
end
