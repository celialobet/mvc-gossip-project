require 'gossip'
require 'view'

class Controller
  
  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(@params.values[0], @params.values[1])
    gossip.save
  end

  def index_gossips
    print @all_gossips
    @view.index_gossips(@gossip)
  end

  def delete_gossip
    
  end
 
end