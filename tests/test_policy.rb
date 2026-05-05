require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = BinaryParseYamlMark::Signal.new(demand: 86, capacity: 97, latency: 12, risk: 21, weight: 7)
    assert_equal 196, BinaryParseYamlMark.score(signal_case_1)
    assert_equal 'accept', BinaryParseYamlMark.classify(signal_case_1)
    signal_case_2 = BinaryParseYamlMark::Signal.new(demand: 94, capacity: 82, latency: 16, risk: 17, weight: 8)
    assert_equal 210, BinaryParseYamlMark.score(signal_case_2)
    assert_equal 'accept', BinaryParseYamlMark.classify(signal_case_2)
    signal_case_3 = BinaryParseYamlMark::Signal.new(demand: 99, capacity: 102, latency: 22, risk: 21, weight: 10)
    assert_equal 222, BinaryParseYamlMark.score(signal_case_3)
    assert_equal 'accept', BinaryParseYamlMark.classify(signal_case_3)
  end
end
