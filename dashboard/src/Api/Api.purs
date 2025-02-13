module Api.Api where

import Prelude
import Effect.Aff (Aff)
import Effect.Aff.Console as AC

-- Dummy API call that logs a message.
fetchData :: Aff Unit
fetchData = AC.log "Fetching data from API..."
