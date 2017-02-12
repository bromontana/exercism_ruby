module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end


class Complement


  @transcription_key = {"G"=>"C", "C"=>"G", "A"=>"U", "T"=>"A"}
  @comp = ""
  @sequence = ""

  def self.of_dna (sequence)
    @sequence = sequence.to_str

    unless @sequence.empty? || @sequence.length <= 1
      @sequence.each { |i| @comp << @transcription_key[i] }
    else
      @comp << @transcription_key[@sequence]
    end

    return @comp
  end
transcription_key = {"G"=>"C", "C"=>"G", "A"=>"U", "T"=>"A"}
puts transcription_key["G"]



  # @transcription_key = Hash.new
  # @transcription_key["G"] = "C"
  # @transcription_key["C"] = "G"
  # @transcription_key["T"] = "A"
  # @transcription_key["A"] = "U"
  # def self.of_dna (sequence)
  #
  #   comp = ""
  #   @sequence = sequence.to_str
  #
  #   if (sequence == true && sequence.length > 1)
  #     @sequence.each_char { |i| comp << @transcription_key[i] && i == "G" || "C" || "T" || "A" }
  #     return comp
  #
  #   else
  #     comp << @transcription_key[@sequence]
  #
  #   end
  #   return comp
  #
  # end
end
