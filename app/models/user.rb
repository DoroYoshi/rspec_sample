class User < ApplicationRecord
  attr_accessor :name

  def initialize(name:, age:)
    @name = name
    @age = age
  end

  def disp_name
    if @age <= 10
      "#{@name}ちゃん"
    elsif @age <= 19
      "#{@name}君"
    elsif @age >= 20
      "#{@name}さん"
    else
      "不正な数値です"
    end
  end
end
