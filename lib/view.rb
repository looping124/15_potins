class View

  def initialize
  end

  def create_gossip

      puts "Quel est ce gossip ?"
      gossip = gets.chomp 
      puts "Et qui en est l'auteur ?"
      gossiper = gets.chomp 
      puts gossip
      puts gossiper
      return params = {"content" => gossip,"author" => gossiper}
  end

  def self.index_gossips(gossips)
    puts
    puts "Voici la liste de tous les potins :"
    gossips.each_with_index {|gossip, i| puts "#{i} - \"#{gossip.content}\" raporté par #{gossip.author}"}
    puts
  end

end