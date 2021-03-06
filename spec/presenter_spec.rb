require 'presenter'
require './lib/account'

describe 'presenter' do
  let(:account) { Account.new }
  # let(:date) { Time.new.strftime "%d/%m/%Y" }
  # let(:headers) { 'date || credit || debit || balance'}
  # let(:deposit) { [date, 1000, 1000] }
  # let(:withdrawal) { [date, -500, 500 ]}

  context 'printing history' do
    before(:each) do
      account.transact(1000)
    end
    it 'should show headers when printed' do
      expect(account.print_history).to include('date || credit || debit || balance')
    end
  end
end
