module Init  exposing (dummy)
import Model exposing (..)

dummy =
  (Model f t n b s, Cmd.none)


f = [ Folder "F1" "P1"
    , Folder "F2" "P2"
    , Folder "F3" "P3"
    ]

t = [ Tag "T1" "P1"
    , Tag "T2" "P2"
    , Tag "T3" "P3"
    ]

n = [ Note "N1" "P1" "D1"
    , Note "N2" "P2" "D2"
    , Note "N3" "P3" "D3"
    ]

b = [ Article "A1" "D1"
    , Article "A2" "D2"
    , Article "A3" "D3"
    ]

s = Search "REF" "RET" "REN" "REB"
