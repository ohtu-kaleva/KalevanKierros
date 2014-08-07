FactoryGirl.define do

  factory :user do
    first_name "Krisu"
    last_name "Hansson"
    username "Tyhjis"
    email "nonexistant@non.fi"
    phone_number "0000000"
    street_address "Teletappikuja 1"
    postal_code "00666"
    city "Teletappikaupunki"
    birth_date "27-5-1989"
    gender "M"
    kk_number 12345
    active true

    factory :user_with_kk_enrollment do |user|
      after(:create) do |user|
        user.kk_enrollment = FactoryGirl.create(:kk_enrollment, user: user)
      end
    end

    trait :admin do
      admin true
    end
  end

  factory :kk_enrollment do
    user
  end

  factory :event do
    name 'Testievent'
    start_date Date.today + 3.days
    end_date Date.today + 1.week
    second_end_date Date.today + 2.week
    price 1000
    second_price 2000
    description 'Testikuvaus'

    factory :event_with_attributes do
      after(:create) do |event|
        event.event_attributes << FactoryGirl.build(:event_attribute, :radio_button, event: event)
        event.event_attributes << FactoryGirl.build(:event_attribute, :check_box, event: event)
        event.event_attributes << FactoryGirl.build(:event_attribute, :text_field, event: event)
        event.event_attributes << FactoryGirl.build(:event_attribute, :select, event: event)
        event.event_attributes << FactoryGirl.build(:event_attribute, :plain_text, event: event)
      end
      after(:create) do |event|
        event.event_attributes.each { |a| a.save! }
      end
    end
  end

  factory :event_attribute do
    event

    trait :radio_button do
      attribute_type 'radio_button'
      attribute_value 'kyllä;ei'
      name 'monivalinta'
      attribute_label 'Ok?'
    end

    trait :check_box do
      attribute_type 'check_box'
      attribute_value 'valittu'
      name 'valintatieto'
      attribute_label 'True?'
    end

    trait :text_field do
      attribute_type 'text_field'
      attribute_value ''
      name 'tekstikenttä'
      attribute_label 'Kommentti'
    end

    trait :select do
      attribute_type 'select'
      attribute_value 'yksi;kaksi;kolme'
      name 'numeron_valinta'
      attribute_label 'Valitse numero'
    end

    trait :plain_text do
      attribute_type 'plain_text'
      attribute_value 'Esimerkki tekstikentästä'
      name 'vapaa_teksti'
      attribute_label 'Tekstikenttä'
    end
  end

  factory :enrollment do
    event_id 1
    factory :enrollment_with_data do
      after(:create) do |enrollment|
        enrollment.enrollment_datas << FactoryGirl.build(:enrollment_data,
                                                         enrollment: enrollment)
      end
    end
  end

  factory :enrollment_data do
    enrollment
    name 'TestName'
    value 'TestValue'
    attribute_index 1
  end
end
