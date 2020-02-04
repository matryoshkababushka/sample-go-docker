package main

import (
  "github.com/rs/zerolog/log"
  "github.com/crackhd/env"
)

var e env.Env

func init() {
	if err := e.LoadFile(); err != nil {
		log.Warn().Msg("Error reading .env file: " + err.Error())
	}
}

func main() {
  log.Fatal().Msg("changeme works!")
}
