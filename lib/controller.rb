class Controller
  def initialize
    puts "controller créé"
  end

  def create_gossip
    view = View.new
    params = view.create_gossip
    my_gossip = Gossip.new(params["content"], params["author"])
    my_gossip.save
  end

  def index_gossips
    gossips = Gossip.all
    View.index_gossips(gossips)
  end

  def remove_gossip(gossip_line_to_remove)
    Gossip.delete_gossip(gossip_line_to_remove)
  end
end