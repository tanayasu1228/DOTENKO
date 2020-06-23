require "./game"

class Dealer

  def initialize
    @dealer_hands = []
  end

  # 相手の初期手札を3枚にする
  def start_draw_dealer(deck)
    # deckクラスのdrawメソッドを使ってドローしてからcardに格納
    card = deck.draw
    # @hand(手札)の配列にcardを1枚目追加
    @dealer_hands << card

    # @hand(手札)の配列にcardを2枚目追加
    card = deck.draw
    @dealer_hands << card

    # @hand(手札)の配列にcardを3枚目追加
    card = deck.draw
    @dealer_hands << card
  end

  # 手札枚数の表示
  def dealer_hands
    puts "----------相手の手札------------"
    @dealer_hands.each.with_index(1) do |dhand, i|
      puts "#{i}枚目 ： #{dhand.show}"
    end
    puts "----------------------------------"
    # hand = @hands.count
    # puts <<~TEXT

    # -----------Dealerの手札-----------
    #           #{hand}枚持っています
    # ----------------------------------
    # TEXT
  end

  # dealer手札から数字だけを抜き取る
  def dealer_hands_show_num
    @dhand_num = []
    @dealer_hands.each do |dealer_hand|
      @dhand_num << "#{dealer_hand.show_num}"
    end
      return "#{@dhand_num}"
  end

  # dealer手札からマークだけを抜き取る
  def dealer_hands_show_mk
    @dhand_mk = []
    @dealer_hands.each do |dealer_hand|
      @dhand_mk << "#{dealer_hand.show_mk}"
    end
      return "#{@dhand_mk}"
  end

end



  # def dealer_hands_check
  #   @hands.each do |hand|
  #     if hand.show_num == @@field_top.show_num || hand.show_mk == @@field_top.show_mk
  #       puts "先手は相手になりました"

  #       break
  #     else
  #       break
  #     end
  #   end
  # end
  
