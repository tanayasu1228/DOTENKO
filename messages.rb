class Messages

def drop_card_message
  puts <<~TEXT
  全員出せるカードがありません
  デッキから再度、場カードを引きます
  TEXT
end



  def error_message
    puts <<~TEXT
    ------------------------------------
    error :  半角数字で再度入力して下さい
    TEXT
  end

end