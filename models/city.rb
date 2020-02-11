require_relative( '../db/sql_runner' )

class City

  attr_reader :id,:country_id, :name, :population, :visited, :capital_city

    def initialize(options)
      @id = options['id'].to_i if options['id']
      @country_id = options['country_id'].to_i
      @name = options['name']
      @population = options['population']
      @visited = options['visited']
      @capital_city = options['capital_city']
    end

    def save()
      sql = "INSERT INTO cities
      (
        country_id,
        name,
        population,
        visited,
        capital_city
      )
      VALUES
      (
        $1, $2, $3, $4, $5
      )
      RETURNING id"
      values = [@country_id, @name, @population, @visited, @capital_city]
      results = SqlRunner.run(sql, values)
      @id = results.first()['id'].to_i
    end
    def delete()
    sql="DELETE FROM cities WHERE id =$1"
    values=[@id]
    SqlRunner.run(sql,values)
    end
    def self.delete_all()
      sql = "DELETE FROM cities"
      SqlRunner.run( sql )
    end
    def self.find( id )
      sql = "SELECT * FROM cities
      WHERE id = $1"
      values = [id]
      results = SqlRunner.run( sql, values )
      return City.new( results.first )
    end

    def self.cities_by_country_id(id)
      sql = "SELECT * FROM cities WHERE country_id = $1"
      values = [id]
      results = SqlRunner.run(sql, values)
      return results.map { |hash| City.new( hash ) }
    end



end
