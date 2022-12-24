package main

import (
	"context"
	"encoding/json"
	"log"
	"os"

	oauth2 "golang.org/x/oauth2/google"
	"google.golang.org/api/option"
	"google.golang.org/api/sheets/v4"
)

func main() {
	keyData, err := os.ReadFile("service-account-key.json")
	if err != nil {
		log.Fatalf("⛔️ %v", err)
	}

	config, err := oauth2.JWTConfigFromJSON(keyData, sheets.SpreadsheetsScope)
	if err != nil {
		log.Fatalf("⛔️ Unable to parse service key: %v", err)
	}

	ctx := context.Background()
	client := config.Client(ctx)
	spreadsheetService, err := sheets.NewService(ctx, option.WithHTTPClient(client))
	if err != nil {
		log.Fatalf("⛔️ Unable to create service: %v", err)
	}

	spreadsheetId := "1W8yqHxZSoJW_-jmmtzjLooCrUE8ShFayRFeRZTJFpl0"
	readRange := "Hindi Speech Multichoice"
	response, err := spreadsheetService.Spreadsheets.Values.Get(spreadsheetId, readRange).Do()
	if err != nil {
		log.Fatalf("⛔️ Unable to read sheet: %v", err)
	}

	questionsJSON := convertToJSON(response.Values)
	os.WriteFile("../LearnHindi/Model/speech-multichoice-questions.json", questionsJSON, 0644)
}

func convertToJSON(values [][]interface{}) []byte {
	questions := make([]SpeechMultiChoiceQuestion, len(values)-1)

	for i, row := range values[1:] {
		// [0: ~index~, 1: question_text, 2: ~question_speech_auto~, 3: question_speech, 4: answer_choice_1, 5: answer_choice_2, 6: answer]
		questions[i] = SpeechMultiChoiceQuestion{
			QuestionText:   row[1].(string),
			QuestionSpeech: row[3].(string),
			AnswerChoices:  []string{row[4].(string), row[5].(string)},
			Answer:         row[6].(string),
		}
	}

	questionsData := map[string][]SpeechMultiChoiceQuestion{"questions": questions}

	questionsJSON, err := json.MarshalIndent(questionsData, "", "\t")
	if err != nil {
		log.Fatalln(err)
	}

	return questionsJSON
}
