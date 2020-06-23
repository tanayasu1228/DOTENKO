class Deck

  #デッキを作成する
  def initialize
    @cards = []

    # joker = ["JOKER", "JOKER "]
    mk = ["スペード", "ダイア", "ハート", "クラブ"]
    num = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

    #markとnumberの組み合わせを1つずつCardクラスに渡し、それぞれのcardオブジェクトを生成する
    mk.each do |mark|
      num.each do |number|
        card = Card.new(mark, number)
        # card << ["JOKER", "JOKER"]
        # 生成したcardを配列に格納する
        @cards << card
      end
    end

    # デッキをシャッフルする
    @cards.shuffle! 
  end

  def draw
    # デッキ配列の最初の要素を削除して取得する。
    @cards.shift
  end

  def bottom_draw
    # デッキ配列の最後の要素を削除して取得する。
    @cards.pop
  end

end

