require_relative 'RequiredOptional/sdk_requirements'
include MyNamespace

describe AutoRestRequiredOptionalTestService do
  before(:all) do
    @base_url = ENV['StubServerURI']

    dummyToken = 'dummy12321343423'
    @credentials = MsRest::TokenCredentials.new(dummyToken)

    client = MyNamespace::AutoRestRequiredOptionalTestService.new(@credentials, @base_url)
    @explicit_client = MyNamespace::Explicit.new(client)
    @implicit_client = MyNamespace::Implicit.new(client)
  end

  # Negative tests
  it 'should create test service' do
    expect { MyNamespace::AutoRestRequiredOptionalTestService.new(@credentials, @base_url) }.not_to raise_error
  end

  it 'should throw error for implicitly required parameter' do
    expect { @implicit_client.get_required_path(nil) }.to raise_error(ArgumentError)
  end

  it 'should throw error for explicitly required header string parameter' do
    expect { @explicit_client.post_required_string_header(nil) }.to raise_error(ArgumentError)
  end

  it 'should throw error for explicitly required body string parameter' do
    expect { @explicit_client.post_required_string_parameter(nil) }.to raise_error(ArgumentError)
  end

  it 'should throw error for explicitly required string-wrapper parameter' do
    input = MyNamespace::Models::StringWrapper.new
    input.value = nil
    expect { @explicit_client.post_required_string_property(input) }.to raise_error(ArgumentError)
  end

  it 'should throw error for explicitly required header array parameter' do
    expect { @explicit_client.post_required_array_header(nil) }.to raise_error(ArgumentError)
  end

  it 'should throw error for explicitly required body array parameter' do
    expect { @explicit_client.post_required_array_parameter(nil) }.to raise_error(ArgumentError)
  end

  it 'should throw error for explicitly required array-wrapper parameter' do
    input = MyNamespace::Models::ArrayWrapper.new
    input.value = nil
    expect { @explicit_client.post_required_array_property(input) }.to raise_error(ArgumentError)
  end

  it 'should throw error for explicitly required body class parameter' do
    expect { @explicit_client.post_required_class_parameter(nil) }.to raise_error(ArgumentError)
  end

  it 'should throw error for explicitly required class-wrapper parameter' do
    input = MyNamespace::Models::ClassWrapper.new
    input.value = nil
    expect { @explicit_client.post_required_class_property(input) }.to raise_error(ArgumentError)
  end

  it 'should throw error for implicitly required global path parameter' do
    expect { @implicit_client.get_required_global_path(nil) }.to raise_error(ArgumentError)
  end

  it 'should throw error for implicitly required global query parameter' do
    expect { @implicit_client.get_required_global_query(nil) }.to raise_error(ArgumentError)
  end

  # Optional parameters tests
  it 'should permit use nil for optional parameters in query' do
    result = @implicit_client.put_optional_query(nil).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end

  it 'should permit use nil for optional parameters in body' do
    result = @implicit_client.put_optional_body(nil).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end

  it 'should permit use nil for optional parameters in header' do
    result = @implicit_client.put_optional_header(nil).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end

  it 'should permit use nil for optional global parameters' do
    result = @implicit_client.get_optional_global_query(nil).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end

  it 'should permit use nil for optional integer parameter in body' do
    result = @explicit_client.post_optional_integer_parameter(nil).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end

  it 'should permit use nil for optional integer parameter in header' do
    result = @explicit_client.post_optional_integer_header(nil).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end

  it 'should permit use integer-wrapper with nil for optional parameters' do
    value = MyNamespace::Models::IntOptionalWrapper.new
    value.value = nil
    result = @explicit_client.post_optional_integer_property(value).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end

  it 'should permit use nil for optional string parameter in body' do
    result = @explicit_client.post_optional_string_parameter(nil).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end

  it 'should permit use nil for optional string parameter in header' do
    result = @explicit_client.post_optional_string_header(nil).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end

  it 'should permit use string-wrapper with nil for optional parameters' do
    input = MyNamespace::Models::StringOptionalWrapper.new
    input.value = nil
    result = @explicit_client.post_optional_string_property(input).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end

  it 'should permit use nil for optional array parameter in body' do
    result = @explicit_client.post_optional_array_parameter(nil).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end

  it 'should permit use nil for optional array parameter in header' do
    result = @explicit_client.post_optional_array_header(nil).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end

  it 'should permit use array-wrapper with nil for optional parameters' do
    input = MyNamespace::Models::ArrayOptionalWrapper.new
    input.value = nil
    result = @explicit_client.post_optional_array_property(input).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end

  it 'should permit use nil for optional class parameter in body' do
    result = @explicit_client.post_optional_class_parameter(nil).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end

  it 'should permit use class-wrapper with nil for optional parameters' do
    input = MyNamespace::Models::ClassOptionalWrapper.new
    input.value = nil
    result = @explicit_client.post_optional_class_property(input).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end
end