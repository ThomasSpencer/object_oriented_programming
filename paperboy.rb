class Paperboy

  def initialize(name, side_of_street)
    @name           = name
    @expereince     = 0
    @side_of_street = side_of_street
    @earnings       = 0.0
  end

  def quota
    total = 50 + (@expereince / 2)
    return total
  end

  def payment(papers_delivered)
    if papers_delivered > self.quota
      overtime = papers_delivered - self.quota
      @earnings = (overtime * 0.5) + (self.quota * 0.25)
    elsif papers_delivered == self.quota
      @earnings = papers_delivered * 0.25
    else
      @earnings = (papers_delivered * 0.25) - 2.0
    end
  end

  def deliver(start_address, end_address)

    if @side_of_street == "even"
      total_deliveries = 0
      (start_address..end_address).each do |x|
        if x.even?
          total_deliveries +=1
        end
      end
      total_earnings = self.payment(total_deliveries)
      @expereince += total_deliveries

    elsif @side_of_street == "odd"
      total_deliveries = 0
      (start_address..end_address).each do |x|
        if x.odd?
          total_deliveries +=1
        end
      end
      total_earnings = self.payment(total_deliveries)
      @expereince += total_deliveries

    else
      puts "#{@name} doesn't know which side of the street to deliver to!"
    end
  end

  def report
    return "I'm #{@name}, I've delivered #{@expereince} papers and have earned #{@earnings} so far!"
  end

end
