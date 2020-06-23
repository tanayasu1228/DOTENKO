require "./deck"
require "./card"
require "./dealer"
require "./player"
require "./field"
require "./game"
require './messages'
# require "./rate"
# require "./money"
# require "./character"


class Dotenko

  def start
    puts <<~TEXT
    ---------------------------------
              D O T E N K O
    ---------------------------------
    TEXT
    
    # デッキを生成
    deck = Deck.new
    dealer = Dealer.new
    player = Player.new
    messages = Messages.new


    puts <<~TEXT

    各プレイヤーはデッキからカードを3枚引く
    
    TEXT

    # ディーラーはdeckから3枚カードを引いてくる
    dealer.start_draw_dealer(deck)

    # ディーラーの手札枚数を表示
    dealer.dealer_hands

    # プレイヤーはdeckから3枚カードを引いてくる
    player.start_draw_player(deck)

    # プレイヤーの手札を表示
    player.player_hands

    field = Field.new
    game = Game.new
    # 場のカードを表示
    field.drop_card(deck)

    # 場のカード(数字またはマーク)に対して出すことができる人が先手。出せる人がいない場合は再度deckからドローして場のカードを変更する
    # 先手が1枚目のカードを捨てるまでループ(ディーラー優先で処理)
    while
      # dealer手札の数字を取得
      @dhand_num = dealer.dealer_hands_show_num
      # dealer手札のマークを取得
      @dhand_mk = dealer.dealer_hands_show_mk
      # player手札の数字を取得
      @phand_num = player.player_hands_show_num
      # player手札のマークを取得
      @phand_mk = player.player_hands_show_mk
      # 場カードの数字を取得
      @field_top_num = field.field_top_show_num
      # 場カードのマークを取得
      @field_top_mk = field.field_top_show_mk

        # dealer手札内に場カードと同じ数字、又はマークがあればtrue
        if @dhand_num.include?("#{@field_top_num}") or @dhand_mk.include?("#{@field_top_mk}")
          game.game_start_dealer
          break
          # player手札内に場カードと同じ数字、又はマークがあればtrue
        elsif @phand_num.include?("#{@field_top_num}") or @phand_mk.include?("#{@field_top_mk}")
          puts <<~TEXT
          dealerは出せるカードが無いようです
          あなたは出せるカードがあります。出しますか? (数字を選んで下さい)
          ------------------------
          1: 出す   2: 出さない
          ------------------------
          TEXT
          while 
          @num = gets.chomp.to_i
            case @num
            when 1
              game.game_start_player
              break
            when 2
              break
            else
              messages.error_message
              puts <<~TEXT 
              数字は  1 or 2 で選んで下さい
              ------------------------------------
              TEXT
              next
            end
            break
          end
          messages.drop_card_message
          player.player_hands
          field.drop_card(deck)
          next
        else 
            messages.drop_card_message
            player.player_hands
            field.drop_card(deck)
        end
    end

  end
end
















    
    # while
    # # 場にカードを表示
    # field = Field.new
    # field.drop_card(deck)

    # dealer.dealer_hands_check

    # puts <<~TEXT
    # 場のカードに対して手札からカードを出しますか?
    # 1: 出す   2: 出さない
    # TEXT
     
    #   @first_action = gets.chomp.to_i
    #   case @first_action
    #   when 1
    #     break
    #   when 2
    #     puts "再度ドローして場のカードを変更します"
    #     # field.drop_card(deck)
    #   else
    #     puts <<~TEXT
    #     不適切な入力です。再度数字を選択してください。
    #     TEXT
    #   end
    # end
    # player.player_hands_check
    # dealer.dealer_hands_check
      


 




    



