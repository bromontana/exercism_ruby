module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end


class Complement


  @transcription_key = {"G"=>"C", "C"=>"G", "A"=>"U", "T"=>"A"}


  def self.of_dna (sequence)
    @comp = ""
    @sequence = sequence.to_str

    char_map = []

    if @sequence.length > 1
      @sequence.each_char { |i| char_map << i }
    else
      char_map << @sequence

    char_map.each do |j|
      if @transcription_key.key?(j)
        @comp << @transcription_key[j]
      else
        @comp
      end
    end
  end
    # else
    #   @comp << @transcription_key[@sequence]


    # if @sequence.empty? == false || @sequence.length > 1
    #   @sequence.each_char { |i| @comp << @transcription_key[i] }
    # # elsif @transcription_key.each { |k| @transcription_key[k] != @sequence }
    # #   @comp = ""
    # else
    #   @comp << @transcription_key[@sequence]
    # end

    return @comp
  end
end
