class Task
  @@all_tasks = [] # this is a class variable

  define_method(:initialize) do |description|
    @description = description
  end

  define_method(:description) do # defines an instance method
    @description
  end

  define_singleton_method(:all) do # defines a class method
    @@all_tasks
  end

  define_method(:save) do
    @@all_tasks.push(self)
  end

  define_singleton_method(:clear) do
    @@all_tasks = []
  end
end

class Details
  @@all_details = []

  define_method(:initialize) do |details|
    @details = details
  end

  define_method(:details) do
    @details
  end

  define_method(:save) do
    @@all_details.push(self)
  end

end
