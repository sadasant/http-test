
class HttpTestTest < DaFunk::Test.case
  def test_sample
    assert_equal "0.0.1", Main.version
  end
end

