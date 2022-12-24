module Views.Nav exposing (..)

import Html exposing (Html, a, button, div, nav, span, text)
import Html.Attributes as Attr
import Svg exposing (path, svg)
import Svg.Attributes as SvgAttr


navigation : Html msg
navigation =
    nav
        [ Attr.class "flex items-center justify-between flex-wrap bg-teal-500 p-6"
        ]
        [ div
            [ Attr.class "flex items-center flex-shrink-0 text-white mr-6"
            ]
            [ svg
                [ SvgAttr.class "fill-current h-8 w-8 mr-2"
                , SvgAttr.width "54"
                , SvgAttr.height "54"
                , SvgAttr.viewBox "0 0 54 54"
                ]
                [ path
                    [ SvgAttr.d "M13.5 22.1c1.8-7.2 6.3-10.8 13.5-10.8 10.8 0 12.15 8.1 17.55 9.45 3.6.9 6.75-.45 9.45-4.05-1.8 7.2-6.3 10.8-13.5 10.8-10.8 0-12.15-8.1-17.55-9.45-3.6-.9-6.75.45-9.45 4.05zM0 38.3c1.8-7.2 6.3-10.8 13.5-10.8 10.8 0 12.15 8.1 17.55 9.45 3.6.9 6.75-.45 9.45-4.05-1.8 7.2-6.3 10.8-13.5 10.8-10.8 0-12.15-8.1-17.55-9.45-3.6-.9-6.75.45-9.45 4.05z"
                    ]
                    []
                ]
            , span
                [ Attr.class "font-semibold text-xl tracking-tight"
                ]
                [ text "Tailwind CSS" ]
            ]
        , div
            [ Attr.class "block lg:hidden"
            ]
            [ button
                [ Attr.class "flex items-center px-3 py-2 border rounded text-teal-200 border-teal-400 hover:text-white hover:border-white"
                ]
                [ svg
                    [ SvgAttr.class "fill-current h-3 w-3"
                    , SvgAttr.viewBox "0 0 20 20"
                    ]
                    [ Svg.title []
                        [ text "Menu" ]
                    , path
                        [ SvgAttr.d "M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z"
                        ]
                        []
                    ]
                ]
            ]
        , div
            [ Attr.class "w-full block flex-grow lg:flex lg:items-center lg:w-auto"
            ]
            [ div
                [ Attr.class "text-sm lg:flex-grow"
                ]
                [ a
                    [ Attr.href "#responsive-header"
                    , Attr.class "block mt-4 lg:inline-block lg:mt-0 text-teal-200 hover:text-white mr-4"
                    ]
                    [ text "Docs" ]
                , a
                    [ Attr.href "#responsive-header"
                    , Attr.class "block mt-4 lg:inline-block lg:mt-0 text-teal-200 hover:text-white mr-4"
                    ]
                    [ text "Examples" ]
                , a
                    [ Attr.href "#responsive-header"
                    , Attr.class "block mt-4 lg:inline-block lg:mt-0 text-teal-200 hover:text-white"
                    ]
                    [ text "Blog" ]
                ]
            , div []
                [ a
                    [ Attr.href "#"
                    , Attr.class "inline-block text-sm px-4 py-2 leading-none border rounded text-white border-white hover:border-transparent hover:text-teal-500 hover:bg-white mt-4 lg:mt-0"
                    ]
                    [ text "Download" ]
                ]
            ]
        ]
