RSpec.describe BankAccount do
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      account = BankAccount.new
      initial_balance = account.balance
      deposit_amount = 100
      account.deposit(deposit_amount)
      expect(account.balance).to eq(initial_balance + deposit_amount)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      account = BankAccount.new
      initial_balance = 200
      withdrawal_amount = 100
      account.deposit(initial_balance)
      account.withdraw(withdrawal_amount)
      expect(account.balance).to eq(initial_balance - withdrawal_amount)
    end

    it "does not change the balance if insufficient funds" do
      account = BankAccount.new
      initial_balance = 50
      withdrawal_amount = 100
      account.deposit(initial_balance)
      account.withdraw(withdrawal_amount)
      expect(account.balance).to eq(initial_balance)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      account = BankAccount.new
      initial_balance = 500
      account.deposit(initial_balance)
      expect(account.balance).to eq(initial_balance)
    end
  end
end
