class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(input={})
    @id = input[:id]
    @name = input[:name]
    @type = input[:type]
    @db =  input[:db]
    end
    
    def self.save(id, name, type, db)
      puts input
      sql = "INSERT INTO pokemon VALUES(?,?,?)"
      db.execute(sql, [:id], [:name], [:type])
    end
      
  end
