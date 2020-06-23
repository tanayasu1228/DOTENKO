require "./game"

class Player

  def initialize
    @player_hands = []
  end

  # プレイヤーの初期手札を3枚にする
  def start_draw_player(deck)
    # deckクラスのdrawメソッドを使ってドローしてからcardに格納
    card = deck.draw
    # @hand(手札)の配列にcardを1枚目追加
    @player_hands << card

    # @hand(手札)の配列にcardを2枚目追加
    card = deck.draw
    @player_hands << card

    # @hand(手札)の配列にcardを3枚目追加
    card = deck.draw
    @player_hands << card
  end

# 手札内容の表示
  def player_hands
    puts "----------あなたの手札------------"
    @player_hands.each.with_index(1) do |phand, i|
      puts "#{i}枚目 ： #{phand.show}"
    end
    puts "----------------------------------"
  end

  # player手札から数字だけを抜き取る
  def player_hands_show_num
    @phand_num = []
    @player_hands.each do |player_hand|
      @phand_num << "#{player_hand.show_num}"
    end
      return "#{@phand_num}"
  end

  # player手札からマークだけを抜き取る
  def player_hands_show_mk
    @phand_mk = []
    @player_hands.each do |player_hand|
      @phand_mk << "#{player_hand.show_mk}"
    end
      return "#{@phand_mk}"
  end



end

  # def player_hands_check
  #   @hands.each do |hand|
  #     if hand.show_num == @@field_top.show_num || hand.show_mk == @@field_top.show_mk
  #       puts "カードは#{hand.show_num}"
  #       # puts "あなたが先行です"
  #     else
  #       #
  #     end
  #   end
  # end
