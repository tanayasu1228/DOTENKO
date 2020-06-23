class Rate

  # レートの初期値を設定
  def initialize
    @rate = 100
  end

  # レートの倍増(現在のレート x2倍)
  def rate_up(rate)
    @rate *= 2
    return @rate
  end
  
end
    