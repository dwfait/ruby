# frozen_string_literal: true

require 'benchmark/ips'

Benchmark.ips do |x|
  a1 = (1..10_000).to_a
  a2 = (1..10_000).to_a

  x.report('old') do
    a1.eql? a2
  end

  x.report('new') do
    a1.new_eql? a2
  end

  x.compare!
end
