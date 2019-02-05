class Restaurant
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find{|rest| rest.name == name}
  end

  def customers
    reviews = Review.all.select {|review| review.restaurant == self}
    reviews.map{|review| review.customer}.uniq
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
    count = reviews.size
    sum = 0
    reviews.each { |review| sum += review.rating.to_f }
    sum / count.to_f
  end

  def longest_review
    longest = nil
    reviews.each do |review|
      if (longest == nil || review.content.length > longest.content.length)
        longest = review
      end
    end
    longest
  end
end
