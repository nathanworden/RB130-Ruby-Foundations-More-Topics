class OCR
  def initialize(text)
    @text = text

    @conversion_hsh = { " _ \n| |\n|_|\n"  =>  "0", 
                        "   \n  |\n  |\n"  =>  "1",
                        " _ \n _|\n|_ \n"  =>  "2",
                        " _ \n _|\n _|\n"  =>  "3",
                        "   \n|_|\n  |\n"  =>  "4",
                        " _ \n|_ \n _|\n"  =>  "5",
                        " _ \n|_ \n|_|\n"  =>  "6",
                        " _ \n  |\n  |\n"  =>  "7",
                        " _ \n|_|\n|_|\n"  =>  "8",
                        " _ \n|_|\n _|\n"  =>  "9"
                      } 
  end

  attr_accessor :text

  def convert
    return single_digit(text) if text.size <= 12
    return multiple_digit(text) if !text.include?("\n\n")
    multi_line(text)
  end

  def multi_line(text)
    lines = text.split("\n\n")
    lines.map {|line| multiple_digit(line)}.join(',')
  end

  def multiple_digit(txt)
    txt = standardize_multiple_digit(txt)

    arr = txt.scan(/.../)
    num_digits = arr.size / 3

    sections = arr.each_slice(num_digits).to_a.transpose
    sections.map! {|sec| sec.join("\n") << "\n"}

    sections.map {|num| @conversion_hsh[num] || '?' }.join("")
  end

  def standardize_multiple_digit(txt)
    trio = txt.split("\n")
    correct_size = trio[2].size
    trio.map! do |str| 
      if str.size != correct_size
        str << " " 
      else
        str
      end
    end
    trio.join("\n") << "\n"
  end   

  def single_digit(txt)
    txt = standardize_single_digit(txt)
    @conversion_hsh[txt] || '?' 
  end

  def standardize_single_digit(text)
    trio = text.split("\n")
    trio.map! do |str|
        if str.size == 2
            str << " "
        elsif str.size == 0
            str << "   "
        else
            str
        end
    end
    trio.join("\n") << "\n"
  end
end
  