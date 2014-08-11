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

  factory :complete_event, class: Event do
    id 1
    name 'Testievent'
    start_date Date.today + 3.days
    end_date Date.today + 1.week
    second_end_date Date.today + 2.week
    price 1000
    second_price 2000
    description 'Testikuvaus'
    open false
    factor 1
    penalty_factor 1.0

    trait :running do
      sport_type 'RunningEvent'
    end

    trait :rowing do
      sport_type 'RowingEvent'
    end

    trait :skating do
      sport_type 'SkatingEvent'
    end

    trait :skiing do
      sport_type 'SkiingEvent'
    end

    trait :orienteering do
      sport_type 'OrienteeringEvent'
    end

    trait :cycling do
      sport_type 'CyclingEvent'
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

  factory :complete_enrollment, class: Enrollment do
    event_id 1
    time nil

    trait :running do
      after :create do |enrollment|
        enrollment.enrollment_datas << EnrollmentData.create(name: 'Tyyppi', value: 'maraton', attribute_index: 1)
      end
    end

    trait :rowing do
      after :create do |enrollment|
        enrollment.enrollment_datas << EnrollmentData.create(name: 'Melonta', value: 'Soutu', attribute_index: 1)
        enrollment.enrollment_datas << EnrollmentData.create(name: 'Parin nimi', value: '', attribute_index: 2)
      end
    end

    trait :skating do
      after :create do |enrollment|
        enrollment.enrollment_datas << EnrollmentData.create(name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1)
      end
    end

    trait :skiing do
      after :create do |enrollment|
        enrollment.enrollment_datas << EnrollmentData.create(name: 'Tyyli', value: 'Vapaa', attribute_index: 1)
      end
    end

    trait :orienteering do
      after :create do |enrollment|
        enrollment.enrollment_datas << EnrollmentData.create(name: 'Emit', value: 'Kyllä', attribute_index: 1)
      end
    end
  end

  factory :enrollment_data do
    enrollment
    name 'TestName'
    value 'TestValue'
    attribute_index 1
  end

  factory :result do
    name 'Kristian Hansson'
    city 'Helsinki'
    year Date.today.year
    series 'M'
    orienteering_pts 1000
    orienteering_pos 1
    #1:26:07
    orienteering_time 5167
    skiing_pts 817.25
    skiing_style 'vapaa'
    skiing_pos 28
    #2:46:29
    skiing_time 9989
    marathon_pos 9
    marathon_pts 920.75
    marathon_style 'koko'
    #3:14:46
    marathon_time 11686
    skating_pos 86
    #1:03:43
    skating_time 3823
    skating_pts 735.63
    cycling_pos 5
    cycling_pts 938.04
    #1:50:22
    cycling_time 6622
    rowing_pos 25
    rowing_pts 888.12
    rowing_style 'yksin'
    #2:59:41
    rowing_time 10781
    kk_number 12345
    pts_sum 16065.04
    completed_events 6
  end
end
