module Update exposing (..)
import Model  exposing (..)

type Msg = NoOp

-- type Msg
--   = Change String
--   | Toggle Key
--   | Select Key
--   | Search String
--   | ToggleCheck Bool Bool Key Bool   -- Multiple Cascade Key Value



update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NoOp ->
      ( model, Cmd.none )
