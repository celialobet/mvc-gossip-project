require 'csv'

class Gossip

  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    CSV.open("db/gossip.csv","w") do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    all_gossips = []
    CSV.read("db/gossip.csv").each do |gossip|
    gossip_provisoire = Gossip.new(1)
    all_gossips << gossip_provisoire
    end
    return all_gossips
  end

end