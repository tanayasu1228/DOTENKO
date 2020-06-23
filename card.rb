class Card

    # カードオブジェクトの値を受け取る
  def initialize(mark, number)
    @mark = mark
    @number = number
  end

  # markとnumberを関連付けた表示をする
  def show
    return "#{@mark}の#{@number}"
  end
  # numberを戻り値として表示をする
  def show_num
    return "#{@number}"
  end
  # markを戻り値として表示をする
  def show_mk
    return "#{@mark}"
  end

   # number, markを戻り値として表示をする
  def show_mix
    return ["#{@mark}", "#{@number}"]
  end


  # アルファベット表記に数字をつける
  def point
    if @number == "A"
      return 1
    elsif @number == "J" 
      return 11
    elsif @number == "Q"
      return 12
    elsif @number == "K"
      return 13
    # elsif "JOKER" == "JOKER"
    #   return -1 && 0 && 1
    else
      # 数字は文字列として格納されているので、数値に変換して返す
      return @number.to_i
    end
  end

end