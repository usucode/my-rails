RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by(:rack_test)

    # Set User-Agent to avoid error "ActiveRecord::RecordInvalid" when referrencing request.env['HTTP_USER_AGENT'] .
    page.driver.header(
      'User-Agent',
      'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36'
    )
  end
end