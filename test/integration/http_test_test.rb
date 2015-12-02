class IntegrationHttpTestTest < DaFunk::Test.case
  def test_perfom_http
    Device::System.klass = "http-test"
    response = HttpTest.perform
    assert_equal 200, response.code
    assert_equal "CLOUDWALK", response.body
  end
end

