class Task
  @@all_tasks = [] # this is a class variable

  define_method(:initialize) do |description, details|
    @description = description
    @details = details
    @id = @@all_tasks.length().+(1)
  end

  define_method(:description) do # defines an instance method
    @description
  end

  define_method(:details) do # defines an instance method
    @details
  end

  define_method(:id) do
    @id
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

  define_singleton_method(:find) do |identification|
    found_task = nil
    @@all_tasks.each() do |task|
      if task.id().eql?(identification.to_i())
        found_task = task
      end
    end
    found_task
  end
end

# class Details
#   @@all_details = []
#
#   define_method(:initialize) do |details|
#     @details = details
#   end
#
#   define_method(:details) do
#     @details
#   end
#
#   define_singleton_method(:all) do # defines a class method
#     @@all_details
#   end
#
#   define_method(:save) do
#     @@all_details.push(self)
#   end
#
#   define_singleton_method(:clear) do
#     @@all_details = []
#   end
#
# end
