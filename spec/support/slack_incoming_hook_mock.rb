module SlackIncomingHookMock
  def mock_slack_hook(success = true)
    # result = nil
    # if success
    #   result = {status: 200, body: 'ok (200)'}
    # else
    #   result = {status: 404, body: 'No team (404)'}
    # end

    stub_request(:post, "https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX").
         with(:body => "payload=%7B%22channel%22%3A%22%23general%22%2C%22username%22%3A%22Incoming%20Hooker%201%22%2C%22text%22%3A%22Enim%20unde%20itaque%20doloremque.%22%7D",
              :headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Ruby'}).
         to_return(:status => 200, :body => "", :headers => {})
  end
end