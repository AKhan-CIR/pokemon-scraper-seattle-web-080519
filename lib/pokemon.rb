class Pokemon
  attr_reader :id, :name, :type, :db
  
  def initialize(input={})
    @id = input[:id]
    @name = input[:name]
    @type = input[:type]
    @db =  db
    end
    
    def self.save(id, name, type)
      sql = "INSERT INTO pokemon VALUES(?,?,?)"
      db[:conn].execute(sql, :id, :name, :type)
    end
      
  end
