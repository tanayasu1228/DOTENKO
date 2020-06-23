class Money

  # 所持金の初期値
  def initialize
    @money = 30000
  end

  # 所持金に(レートの値 × デッキの一番下の数字)を増額
  def winner_money(rate, deck_bottom)
    @money += rate * deck_bottom
    return @money

  end

  # 所持金から(レートの値 × デッキの一番下の数字)を減額
  def loser_money(rate, deck_bottom)
    @money -= rate * deck_bottom
    return @money
  end

end