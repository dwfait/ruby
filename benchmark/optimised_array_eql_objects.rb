# frozen_string_literal: true

require 'benchmark/ips'

Benchmark.ips do |x|
  a1 = Array.new(100_000, Object.new)
  a2 = Array.new(100_000, Object.new)

  x.report('old') do
    a1.eql? a2
  end

  x.report('new') do
    a1.new_eql? a2
  end

  x.compare!
end
