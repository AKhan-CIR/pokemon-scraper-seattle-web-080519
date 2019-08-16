class Pokemon
  attr_reader :id, :name, :type, :db
  
  def initialize(input={})
    @id = input[:id]
    @name = input[:name]
    @type = input[:type]
    @db =  input[:db]
    end
    
    def self.save(id, name, type, db)
      sql = "INSERT INTO pokemon VALUES(?,?,?)"
      :db.execute(sql, :id, :name, :type)
    end
      
  end
