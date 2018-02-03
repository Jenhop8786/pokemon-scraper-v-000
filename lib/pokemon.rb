class Pokemon
  attr_accessor :id, :name, :type, :hp, :db

def initialize (id:, name:, type:, hp:nil, db:)
    @id = id
    @name = name
    @type = type
    @hp = hp
    @db = db  
end

def self.save (name, type, db)
  pokemon = db.execute ("SELECT * FROM pokemon WHERE id=?", id).flatten
  Pokemon.new (id: pokemon[0], name: pokemon[1], type: pokemon[2], hp: pokemon[3], db: db)
end 