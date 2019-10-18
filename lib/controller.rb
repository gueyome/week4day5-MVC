class Controller
  attr_accessor :gossip
  require_relative 'gossip'
  require_relative 'view'

  def initialize
    @view = View.new
  end
  
  
  def create_gossip
    params = @view.create_gossip
    @gossip = Gossip.new(params.values[1], params.values[0])
    #pour le moment, le contenu de ce gossip est inscrit "en dur" dans le code. L'utilisateur ne peut pas le changer.
    @gossip.save
  end

  def index_gossips
    gossips = Gossip.all
    @view.index_gossips(gossips)
  end

  def delete_gossip

  end

end

