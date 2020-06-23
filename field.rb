require "./deck"

class Field

  def initialize
    @field_cards = []
  end
  
  def drop_card(deck)
    # while
      card = deck.draw
      # @field_cards(場カード)の配列にドローしたcardを追加
      @field_cards = []
      @field_cards << card
      # 配列の最初の要素のみ取得 (引数を入れると先頭含む複数指定、最後の要素からの場合は.last)
      @field_top = @field_cards.first
      # if @field_top == "JOKER"
      #   puts <<~TEXT
      #   場のカードで JOKER が出ました
      #   レートが2倍になりました！
      #   再度、デッキから場にカードを出します
      #   TEXT

      #   rate.rate_up(rate)
      #   puts "現在のレート： #{@rate}です"

      # else
        puts "場のカードは #{@field_top.show} です"
    #     break
    #   end
    # end
  end

  # 場カードの一番上の数字だけを抜き取る
  def field_top_show_num
    field_top = @field_cards.first
    @field_top_num = "#{field_top.show_num}"
    return "#{@field_top_num}"
  end

  # 場カードの一番上のマークだけを抜き取る
  def field_top_show_mk
    field_top = @field_cards.first
    @field_top_mk = "#{field_top.show_mk}"
    return "#{@field_top_mk}"
  end



end

  
# deckトップから引いたカードを場に表示する
  # def drop_card(deck)
  #   deck_top = deck.draw
  #   puts "場のカードは  #{deck_top.show}  です"
  # end
  
# def drop_card(deck)
#     card = deck.draw
#     # 配列(@field_cards)の先頭にドローしたcardを追加
#     @field_cards.unshift("#{card}")
#     # 配列の最初の要素のみ取得 (引数を入れると先頭から複数指定,最後の要素からの場合 last)
#     @field_top = @field_cards.first
#     puts "場のカードは  #{@field_top.show}  です"
#   end