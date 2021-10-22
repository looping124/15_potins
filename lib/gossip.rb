class Gossip
  attr_reader :content, :author
  def initialize(content,author)
    @content = content
    @author = author
  end


  def save
    unless File.file?("db/gossip.csv")
      File.open("db/gossip.csv", "w")
    end

    CSV.open("db/gossip.csv", "a") do |csv|
      csv << [@content, @author]
    end
    
  end

  def self.all
    all_gossip=[]
    CSV.foreach("db/gossip.csv", "r") do |row|
       gossip_provisoire = Gossip.new(row[0],row[1])
       all_gossip << gossip_provisoire
     end
    return all_gossip
  end

  def self.delete_gossip(gossip_line_to_remove)

  
    table = CSV.table("db/gossip.csv")

    puts gossip_line_to_remove
    table.delete(gossip_line_to_remove-1)
    binding.pry
    File.open("db/gossip.csv", 'w') do |f|
      f.write(table.to_csv)
    end
  end

end