require_relative( '../db/sql_runner' )

class Country

  attr_reader :id, :name

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
    def self.delete_all()
      sql = "DELETE FROM countries"
      SqlRunner.run( sql )
    end


end
