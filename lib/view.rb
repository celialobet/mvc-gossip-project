class View

  def create_gossip
    puts "Quel est ton nom ?"
    print "> "
    author = gets.chomp

    puts "Quel est ton gossip ?"
    print "> "
    content = gets.chomp
    return params = { content: content, author: author }
  end

  def index_gossips(gossips)
    puts "Voici la liste des potins et de leur rapporteur :"
    CSV.read("db/gossip.csv").each do |gossip|
      print gossip
      puts
      puts "---"
    end
  end

end