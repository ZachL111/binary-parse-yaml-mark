require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = BinaryParseYamlMark::DomainReview.new(signal: 70, slack: 53, drag: 24, confidence: 94)
    assert_equal 215, BinaryParseYamlMark.domain_review_score(item)
    assert_equal "ship", BinaryParseYamlMark.domain_review_lane(item)
  end
end
