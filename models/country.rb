require_relative( '../db/sql_runner' )

class Country

  attr_reader :id, :continent_id, :name, :population, :capital_city

    def initialize(options)
      @id = options['id'].to_i if options['id']
      @continent_id = options['continent_id'].to_i
      @name = options['name']
      @population = options['population'].to_i
      @visited = options['visited']
      @capital_city = options['capital_city']
    end

    def save()
      sql = "INSERT INTO countries
      (
        name,
        continent_id,
        population,
        visited,
        capital_city
      )
      VALUES
      (
        $1, $2, $3, $4, $5
      )
      RETURNING id"
      values = [@name, @continent_id, @population, @visited, @capital_city]
      results = SqlRunner.run(sql, values)
      @id = results.first()['id'].to_i
    end
    def continent()
      sql = "SELECT * FROM continents WHERE id = $1"
      values = [@continent_id]
      results = SqlRunner(sql, values)
      return Continent.new(results.first)
    end

    def self.find( id )
      sql = "SELECT * FROM countries
      WHERE id = $1"
      values = [id]
      results = SqlRunner.run( sql, values )
      return Country.new( results.first )
    end

    def self.delete_all()
      sql = "DELETE FROM countries"
      SqlRunner.run( sql )
    end

    def self.all()
      sql = "SELECT * FROM countries"
      results = SqlRunner.run( sql )
      return results.map { |hash| Country.new( hash ) }
    end

    def self.countries_by_continent_id(id)
      sql = "SELECT * FROM countries WHERE continent_id = $1"
      values = [id]
      results = SqlRunner.run(sql, values)
      return results.map { |hash| Country.new( hash ) }
    end

end
