class Pokemon
  attr_reader :id, :name, :type, :db
  
  def initialize(input={})
    @id = input[:id]
    @name = input[:name]
    @type = input[:type]
    @db =  input[:db]
    end
    
    def self.save(name, type, db)
      sql = "INSERT INTO pokemon VALUES(?,?)"
      db[:conn].execute(sql, name, type)
    end
      
  end
