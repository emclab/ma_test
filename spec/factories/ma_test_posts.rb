# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ma_test_post, :class => 'Post' do
    subject "MyString"
    log "MyString"
  end
end
