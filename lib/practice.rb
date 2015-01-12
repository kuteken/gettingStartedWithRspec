class User
  def initialize(args)
    @name = args[:name]
    @age  = args[:age]
  end

  def greet
    if @age <= 12
      "ぼくは#{@name}だよ。"
    else
      "僕は#{@name}です。"
    end
  end
end
