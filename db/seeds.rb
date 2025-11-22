puts "Seeding started..."

############################################
# USERS
############################################
User.destroy_all

user1 = User.create!(
  email: "hafsa@example.com",
  username: "hafsa",
  password_digest: "",
  level: 1,
  total_score: 0
)

user2 = User.create!(
  email: "test@example.com",
  username: "testuser",
  password_digest: "",
  level: 1,
  total_score: 0
)

puts "Users created."

############################################
# COURSES
############################################
Course.destroy_all

course_a1 = Course.create!(
  name: "Beginner English",
  level: "A1",
  description: "Temel İngilizce başlangıç dersi."
)

course_a2 = Course.create!(
  name: "Elementary English",
  level: "A2",
  description: "Basit cümle yapıları ve günlük konuşmalar."
)

puts "Courses created."

############################################
# WORDS
############################################
Word.destroy_all

word_school = Word.create!(
  course: course_a1,
  term: "school",
  definition: "A place where people go to learn.",
  example_sentence: "I go to school every day.",
  level: "A1",
  category: "Education"
)

word_knife = Word.create!(
  course: course_a1,
  term: "knife",
  definition: "A cutting tool with a sharp blade.",
  example_sentence: "Be careful when using the knife.",
  level: "A1",
  category: "Kitchen"
)

word_airplane = Word.create!(
  course: course_a2,
  term: "airplane",
  definition: "A powered flying vehicle with wings.",
  example_sentence: "The airplane took off on time.",
  level: "A2",
  category: "Travel"
)

puts "Words created."

############################################
# WORD AUDIOS
############################################
WordAudio.destroy_all

WordAudio.create!(
  word: word_knife,
  audio_url: "C:/backend/sesvideo/ses_Jessica_1.mp3",
  speaker_name: "Female 1",
  accent: "US",
  duration: 1.2
)

WordAudio.create!(
  word: word_knife,
  audio_url: "C:/backend/sesvideo/ses_Daniel_1.mp3",
  speaker_name: "Male 1",
  accent: "UK",
  duration: 1.1
)

WordAudio.create!(
  word: word_knife,
  audio_url: "C:/backend/sesvideo/ses_Sarah_1.mp3",
  speaker_name: "Female 2",
  accent: "US",
  duration: 1.3
)

WordAudio.create!(
  word: word_knife,
  audio_url: "C:/backend/sesvideo/ses_Liam_1.mp3",
  speaker_name: "Male 2",
  accent: "US",
  duration: 1.3
)

puts "Word audios created."

############################################
# USER WORDS — Kullanıcı kelime ilerlemesi
############################################
UserWord.destroy_all

UserWord.create!(
  user: user1,
  word: word_cat,
  status: "learning",
  practice_count: 3,
  last_practiced_at: Time.now - 1.day
)

UserWord.create!(
  user: user1,
  word: word_dog,
  status: "not_started",
  practice_count: 0
)

UserWord.create!(
  user: user2,
  word: word_airplane,
  status: "learning",
  practice_count: 1,
  last_practiced_at: Time.now - 2.days
)

puts "User words created."

############################################
# PRONUNCIATION ATTEMPTS
############################################
PronunciationAttempt.destroy_all

PronunciationAttempt.create!(
  user: user1,
  word: word_cat,
  recording_url: "https://cdn.example.com/recordings/cat_attempt1.wav",
  score: 82.5,
  feedback: "Good pronunciation, minor issues with the ending sound.",
  attempted_at: Time.now - 3.hours
)

PronunciationAttempt.create!(
  user: user1,
  word: word_cat,
  recording_url: "https://cdn.example.com/recordings/cat_attempt2.wav",
  score: 90.0,
  feedback: "Excellent improvement!",
  attempted_at: Time.now - 1.hour
)

puts "Pronunciation attempts created."

puts "Seeding completed successfully!"
