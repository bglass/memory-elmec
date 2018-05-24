module View exposing (main_grid)
-- packages:
import Element exposing (..)
import Element.Attributes exposing (..)
-- src:
import View.Style exposing (..)


main_grid _ =
    Element.layout stylesheet <|
        column None
            []
            [ el None [ ] <|
                column Main
                    [ ]
                    (List.concat
                        [ viewGridLayout
                        ]
                    )
            ]

viewGridLayout =
    [ Element.grid Container
        [ spacing 1, height (px 600) ]
        { columns = [percent 20, percent 20, percent 20, fill]
        , rows =
            [ px 20
            , px 20
            , px 20
            , fill
            , px 20
            ]
        , cells =
            [ cell
                { start = ( 0, 0 )
                , width = 3
                , height = 1
                , content = (el Box [] (text "date"))
                }
            , cell
                { start = ( 0, 1 )
                , width = 3
                , height = 1
                , content = (el Box [ spacing 100 ] (text "tag"))
                }
            , cell
                { start = ( 0, 2 )
                , width = 3
                , height = 1
                , content = (el Box [] (text "folder"))
                }
            , cell
                { start = ( 3, 0 )
                , width = 1
                , height = 4
                , content = (el Box [] (text "book"))
                }
            , cell
                { start = ( 0, 3 )
                , width = 1
                , height = 1
                , content = (el Box [] (text "folders"))
                }
            , cell
                { start = ( 1, 3 )
                , width = 1
                , height = 1
                , content = (el Box [] (text "tags"))
                }
            , cell
                { start = ( 2, 3 )
                , width = 1
                , height = 1
                , content = (el Box [] (text "notes"))
                }
            , cell
                { start = ( 0, 4 )
                , width = 1
                , height = 1
                , content = (el Box [] (text "ref"))
                }
            , cell
                { start = ( 1, 4 )
                , width = 1
                , height = 1
                , content = (el Box [] (text "ret"))
                }
            , cell
                { start = ( 2, 4 )
                , width = 1
                , height = 1
                , content = (el Box [] (text "ren"))
                }
            , cell
                { start = ( 3, 4 )
                , width = 1
                , height = 1
                , content = (el Box [] (text "reb"))
                }
            ]
        }
    ]
