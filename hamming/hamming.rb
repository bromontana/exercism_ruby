module BookKeeping
  VERSION = 255 # Where the version number matches the one in the test.
end
class Hamming
  def self.compute(reference, refcopy)
    flaws = 0
    if (reference.length == refcopy.length && reference.length > 1)
      reference.each do |i|
        refcopy.each do |j|
          if i == j
            flaws += 1
          end
        end
      end
    end
    return flaws
  end
end
