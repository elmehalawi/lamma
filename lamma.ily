\header {
    title = \markup {
        \override #'(font-name . "Katibeh")
        "لما بدا يتثنى"
    }
    % subtitle = "LAMMA BADA YATATHANNA"
    arranger = \markup {
        \override #'(font-name . "Katibeh")
        "الحسن المحلاوي"
        % "Hassan El-Mehalawi"
    }
    tagline = ""
}

upper = \relative c'' {
  \clef treble
  \key a \minor
  \time 4/4
  \tempo 4 = 100

  e,4 a4 a4 b8 c8 | d8 c8 c8 b8 b8 a8 a8 gis8 |
  a4 gis8 f8 e4 a4 r8 a8 b8 c8 d8 c8 c8 b8 b8 a8 a8 gis8 a4
  a4 b8 c8 d4. d8 e4 | c4 d32 c32 b16 b c32 b a8 a8 gis8 a4.

  a8 b4 gis4. | gis8 a a16 gis f4. e8 f | e f gis e4 e8 f8 f16 e |
  d4. d8 e4 c4 |
  f64 e d c b8 b64 c b16 a gis a4

  % <a c e>8
}

lower = \relative c {
  \clef bass
  \key a \minor
  \time 4/4

  r4 a8 e'8 a8 c8 e4 | d,,8 a'8 d8 f8 a8 d8 d8 a8 |
  a,8 e'8 a4. c8 a,8 e'8 a8 c8 e4 d,,8 a'8 d8 f8 a8 d8 d8 a8 a,8
  e'8 a8 c8 e8 c8 d,,8 a'8 d8 f8 a8 d8 | f,,8 c'8 f8 e,8 b'8 e8 gis8 a,8

  e'8 a8 c8 e8 c8 e,,8 b' e | gis b gis d, a' d f a8 a8 d8 a e, b' e gis gis |
  d, a' d f a f f, c' |
  f e, b' e
}

\score {
  \new PianoStaff
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
