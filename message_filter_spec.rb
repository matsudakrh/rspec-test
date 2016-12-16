require_relative 'message_filter'

describe MessageFilter do
  shared_examples 'with argument "foo"' do
    it { is_expected.to be_detect('hello from foo') }
    it { is_expected.not_to be_detect('hello, world!')}
  end
  context MessageFilter, 'with argument "foo"' do
    subject { MessageFilter.new('foo') }
    it_behaves_like 'with argument "foo"'
  end
  context MessageFilter, 'with argument "foo", "bar"' do
    subject { MessageFilter.new('foo', 'bar') }
    it {is_expected.to be_detect('hello from bar')}
    it_behaves_like 'with argument "foo"'
  end

end
