# logger class to demonstrate creating one global instance of Logger class which appends message to log.txt file
# run the code and then check the change in the log.txt file
class Logger
  def initialize
    # open a log file for appending
    @log = File.open("log.txt", "a")
  end

  @@instance = Logger.new

  def self.instance
    return @@instance
  end

  def log(msg)
    @log.puts(msg)
  end
  # make new method private so we cannot create new instance of the class Logger
  private_class_method :new
end

Logger.instance.log('message 1')