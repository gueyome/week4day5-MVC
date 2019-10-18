require 'pry'

class Gossip
  attr_accessor :content, :author

  def initialize(author, content)
    @content = content
    @author = author
  end
  
  def save
    CSV.open("db/gossip.csv", "a+") do |csv|
      csv << [@author, @content] 
    end
  end

  def self.all
    # 1)création d'un array vide qui s'appelle all_gossips
    all_gossips = []
    # 2)chaque ligne de ton CSV.each do |ligne|
    CSV.foreach("db/gossip.csv") do |line|
      # 2-a) gossip_provisoire = Gossip.new(paramètres de la ligne) - permet de créer un objet gossip
#binding.pry
      gossip_provisoire = Gossip.new(line[0], line[1])
      # 2-b) all_gossips << gossip_provisoire - permet de rajouter le gossip provisoire au array
      all_gossips << gossip_provisoire 
    end
    return all_gossips
  end

end
