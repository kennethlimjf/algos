require "algos/version"

module Algos
  module Inversion


    class InversionCounter
      def self.count_inversions(ary)
        count(ary, ary.size)[1]
      end

      private
        def self.count(ary, size)
          if size == 1
            [ary, 0]
          else
            left = count(ary[0, size/2], size/2)
            right = count(ary[size/2, size], (size+1)/2)
            split = merge_count_split_inv(left[0], right[0], size)

            [split[0], left[1]+right[1]+split[1]]
          end
        end

        def self.merge_count_split_inv(left_ary, right_ary, size)
          merged_ary = Array.new(size)
          inv_count = 0

          for x in 0..(size-1) do
            if left_ary.first && right_ary.first
              if left_ary.first < right_ary.first
                merged_ary[x] = left_ary.shift
              elsif right_ary.first < left_ary.first
                merged_ary[x] = right_ary.shift
                inv_count += left_ary.size
              end
            else
              merged_ary = merged_ary.compact! + (left_ary.empty? ? right_ary : left_ary)
              return [merged_ary, inv_count]
            end
          end
        end
    end


  end
end