class Member
  attr_reader :image,
              :name,
              :allies,
              :enemies,
              :affiliations
  def initialize(data)
    # because we will be taking in api into as data here, I will need to update the api call
    @image = data[:photoUrl]
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliations = data[:affiliation]
  end
end
