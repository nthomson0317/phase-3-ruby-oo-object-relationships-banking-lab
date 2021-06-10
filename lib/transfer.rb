class Transfer
  # your code here
  attr_reader :amount
  attr_accessor :status, :sender, :receiver
  @@all = []

  def self.all
    @@all
  end

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    @@all << self
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if valid? && sender.valid? && sender.balance > amount && self.status == "pending"
      sender.balance = (sender.balance - amount)
      receiver.balance = (receiver.balance + amount)
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if self.status == "complete"
      amount = Transfer.all.last.amount
      sender = Transfer.all.last.sender
      receiver = Transfer.all.last.receiver

      sender.balance = (sender.balance + amount)
      receiver.balance = (receiver.balance - amount)
      self.status = "reversed"
    end
  end
end
