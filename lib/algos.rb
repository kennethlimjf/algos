require "algos/version"

module Algos
  module Sort
    class MergeSort
      def self.sort(x)
        (x.size <= 1) ? x : merge(sort(x[0, x.size/2]), sort(x[x.size/2, x.size]))
      end

      private
        def self.merge(a, b)
          c = Array.new(a.size + b.size)
          c.each_index { |i| (a.first && b.first) ? (c[i] = (a.first < b.first) ? a.shift : b.shift) : (return c.compact! + ((b.size == 0) ? a : b)) }
        end
    end
  end
end
