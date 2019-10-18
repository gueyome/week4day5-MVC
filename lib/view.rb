class View

  def create_gossip
    puts "Alors quel est ton gossip !"
    puts "Qui est l'auteur du gossip?"
    author_reg = gets.chomp.to_s
    puts "Et quel est le gossip?"
    gossip = gets.chomp.to_s
    return params = { content: gossip, author: author_reg }
  end

  def index_gossips(gossips)
    puts "----------Liste des gossips de THP-----------"
    gossips.each { |gossip| puts "#{gossip.author} a dit #{gossip.content}" }
    puts "---------------------------------------------"
  end

end

