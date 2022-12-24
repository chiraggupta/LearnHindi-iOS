package main

type SpeechMultiChoiceQuestion struct {
	QuestionText   string   `json:"question_text"`
	QuestionSpeech string   `json:"question_speech"`
	AnswerChoices  []string `json:"answer_choices"`
	Answer         string   `json:"answer"`
}
